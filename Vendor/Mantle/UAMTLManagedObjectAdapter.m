//
//  UAMTLManagedObjectAdapter.m
//  Mantle
//
//  Created by Justin Spahr-Summers on 2013-03-29.
//  Copyright (c) 2013 GitHub. All rights reserved.
//

#import "UAMTLManagedObjectAdapter.h"
#import "UAEXTScope.h"
#import "UAMTLReflection.h"
#import "NSArray+UAMTLManipulationAdditions.h"

NSString * const UAMTLManagedObjectAdapterErrorDomain = @"UAMTLManagedObjectAdapterErrorDomain";
const NSInteger UAMTLManagedObjectAdapterErrorNoClassFound = 2;
const NSInteger UAMTLManagedObjectAdapterErrorInitializationFailed = 3;
const NSInteger UAMTLManagedObjectAdapterErrorInvalidManagedObjectKey = 4;
const NSInteger UAMTLManagedObjectAdapterErrorUnsupportedManagedObjectPropertyType = 5;
const NSInteger UAMTLManagedObjectAdapterErrorUnsupportedRelationshipClass = 6;
const NSInteger UAMTLManagedObjectAdapterErrorUniqueFetchRequestFailed = 7;

// Performs the given block in the context's queue, if it has one.
static id performInContext(NSManagedObjectContext *context, id (^block)(void)) {
	if (context.concurrencyType == NSConfinementConcurrencyType) {
		return block();
	}

	__block id result = nil;
	[context performBlockAndWait:^{
		result = block();
	}];

	return result;
}

// An exception was thrown and caught.
//static const NSInteger UAMTLManagedObjectAdapterErrorExceptionThrown = 1;

@interface UAMTLManagedObjectAdapter ()

// The UAMTLModel subclass being serialized or deserialized.
@property (nonatomic, strong, readonly) Class modelClass;

// A cached copy of the return value of +managedObjectKeysByPropertyKey.
@property (nonatomic, copy, readonly) NSDictionary *managedObjectKeysByPropertyKey;

// A cached copy of the return value of +relationshipModelClassesByPropertyKey.
@property (nonatomic, copy, readonly) NSDictionary *relationshipModelClassesByPropertyKey;

// Initializes the receiver to serialize or deserialize a UAMTLModel of the given
// class.
- (id)initWithModelClass:(Class)modelClass;

// Invoked from +modelOfClass:fromManagedObject:processedObjects:error: after
// the receiver's properties have been initialized.
- (id)modelFromManagedObject:(NSManagedObject *)managedObject processedObjects:(CFMutableDictionaryRef)processedObjects error:(NSError **)error;

// Performs the actual work of deserialization. This method is also invoked when
// processing relationships, to create a new adapter (if needed) to handle them.
//
// `processedObjects` is a dictionary mapping NSManagedObjects to the UAMTLModels
// that have been created so far. It should remain alive for the full process
// of deserializing the top-level managed object.
+ (id)modelOfClass:(Class)modelClass fromManagedObject:(NSManagedObject *)managedObject processedObjects:(CFMutableDictionaryRef)processedObjects error:(NSError **)error;

// Invoked from
// +managedObjectFromModel:insertingIntoContext:processedObjects:error: after
// the receiver's properties have been initialized.
- (id)managedObjectFromModel:(id<NSObject, UAMTLModel, UAMTLManagedObjectSerializing>)model insertingIntoContext:(NSManagedObjectContext *)context processedObjects:(CFMutableDictionaryRef)processedObjects error:(NSError **)error;

// Performs the actual work of serialization. This method is also invoked when
// processing relationships, to create a new adapter (if needed) to handle them.
//
// `processedObjects` is a dictionary mapping UAMTLModels to the NSManagedObjects
// that have been created so far. It should remain alive for the full process
// of serializing the top-level UAMTLModel.
+ (id)managedObjectFromModel:(id<NSObject, UAMTLModel, UAMTLManagedObjectSerializing>)model insertingIntoContext:(NSManagedObjectContext *)context processedObjects:(CFMutableDictionaryRef)processedObjects error:(NSError **)error;

// Looks up the NSValueTransformer that should be used for any attribute that
// corresponds the given property key.
//
// key - The property key to transform from or to. This argument must not be nil.
//
// Returns a transformer to use, or nil to not transform the property.
- (NSValueTransformer *)entityAttributeTransformerForKey:(NSString *)key;

// Looks up the managed object key that corresponds to the given key.
//
// key - The property key to retrieve the corresponding managed object key for.
//       This argument must not be nil.
//
// Returns a key to use, or nil to omit the property from managed object
// serialization.
- (NSString *)managedObjectKeyForKey:(NSString *)key;

// Looks at propertyKeysForManagedObjectUniquing and forms an NSPredicate
// using the uniquing keys and the provided model.
- (NSPredicate *)uniquingPredicateForModel:(id<NSObject, UAMTLModel, UAMTLManagedObjectSerializing>)model;

@end

@implementation UAMTLManagedObjectAdapter

#pragma mark Lifecycle

- (id)init {
	NSAssert(NO, @"%@ should not be initialized using -init", self.class);
	return nil;
}

- (id)initWithModelClass:(Class)modelClass {
	NSParameterAssert(modelClass != nil);

	self = [super init];
	if (self == nil) return nil;

	_modelClass = modelClass;
	_managedObjectKeysByPropertyKey = [[modelClass managedObjectKeysByPropertyKey] copy];

	if ([modelClass respondsToSelector:@selector(relationshipModelClassesByPropertyKey)]) {
		_relationshipModelClassesByPropertyKey = [[modelClass relationshipModelClassesByPropertyKey] copy];
	}

	return self;
}

#pragma mark Serialization

- (id)modelFromManagedObject:(NSManagedObject *)managedObject processedObjects:(CFMutableDictionaryRef)processedObjects error:(NSError **)error {
	NSParameterAssert(managedObject != nil);
	NSParameterAssert(processedObjects != nil);

	NSEntityDescription *entity = managedObject.entity;
	NSAssert(entity != nil, @"%@ returned a nil +entity", managedObject);

	NSManagedObjectContext *context = managedObject.managedObjectContext;

	NSDictionary *managedObjectProperties = entity.propertiesByName;
	NSObject<UAMTLModel> *model = [[self.modelClass alloc] init];

	// Pre-emptively consider this object processed, so that we don't get into
	// any cycles when processing its relationships.
	CFDictionaryAddValue(processedObjects, (__bridge void *)managedObject, (__bridge void *)model);

	BOOL (^setValueForKey)(NSString *, id) = ^(NSString *key, id value) {
		// Mark this as being autoreleased, because validateValue may return
		// a new object to be stored in this variable (and we don't want ARC to
		// double-free or leak the old or new values).
		__autoreleasing id replaceableValue = value;
		if (![model validateValue:&replaceableValue forKey:key error:error]) return NO;

		[model setValue:replaceableValue forKey:key];
		return YES;
	};

	for (NSString *propertyKey in [self.modelClass propertyKeys]) {
		NSString *managedObjectKey = [self managedObjectKeyForKey:propertyKey];
		if (managedObjectKey == nil) continue;

		BOOL (^deserializeAttribute)(NSAttributeDescription *) = ^(NSAttributeDescription *attributeDescription) {
			id value = performInContext(context, ^{
				return [managedObject valueForKey:managedObjectKey];
			});

			NSValueTransformer *attributeTransformer = [self entityAttributeTransformerForKey:propertyKey];
			if (attributeTransformer != nil) value = [attributeTransformer reverseTransformedValue:value];

			return setValueForKey(propertyKey, value);
		};

		BOOL (^deserializeRelationship)(NSRelationshipDescription *) = ^(NSRelationshipDescription *relationshipDescription) {
			Class nestedClass = self.relationshipModelClassesByPropertyKey[propertyKey];
			if (nestedClass == nil) {
				[NSException raise:NSInvalidArgumentException format:@"No class specified for decoding relationship at key \"%@\" in managed object %@", managedObjectKey, managedObject];
			}

			if ([relationshipDescription isToMany]) {
				id models = performInContext(context, ^ id {
					id relationshipCollection = [managedObject valueForKey:managedObjectKey];
					NSMutableArray *models = [NSMutableArray arrayWithCapacity:[relationshipCollection count]];

					for (NSManagedObject *nestedObject in relationshipCollection) {
						NSObject<UAMTLModel> *model = [self.class modelOfClass:nestedClass fromManagedObject:nestedObject processedObjects:processedObjects error:error];
						if (model == nil) return nil;
						
						[models addObject:model];
					}

					return models;
				});

				if (models == nil) return NO;
				if (![relationshipDescription isOrdered]) models = [NSSet setWithArray:models];

				return setValueForKey(propertyKey, models);
			} else {
				NSManagedObject *nestedObject = performInContext(context, ^{
					return [managedObject valueForKey:managedObjectKey];
				});

				if (nestedObject == nil) return YES;

				NSObject<UAMTLModel> *model = [self.class modelOfClass:nestedClass fromManagedObject:nestedObject processedObjects:processedObjects error:error];
				if (model == nil) return NO;

				return setValueForKey(propertyKey, model);
			}
		};

		BOOL (^deserializeProperty)(NSPropertyDescription *) = ^(NSPropertyDescription *propertyDescription) {
			if (propertyDescription == nil) {
				if (error != NULL) {
					NSString *failureReason = [NSString stringWithFormat:NSLocalizedString(@"No property by name \"%@\" exists on the entity.", @""), managedObjectKey];

					NSDictionary *userInfo = @{
						NSLocalizedDescriptionKey: NSLocalizedString(@"Could not deserialize managed object", @""),
						NSLocalizedFailureReasonErrorKey: failureReason,
					};

					*error = [NSError errorWithDomain:UAMTLManagedObjectAdapterErrorDomain code:UAMTLManagedObjectAdapterErrorInvalidManagedObjectKey userInfo:userInfo];
				}

				return NO;
			}

			// Jump through some hoops to avoid referencing classes directly.
			NSString *propertyClassName = NSStringFromClass(propertyDescription.class);
			if ([propertyClassName isEqual:@"NSAttributeDescription"]) {
				return deserializeAttribute((id)propertyDescription);
			} else if ([propertyClassName isEqual:@"NSRelationshipDescription"]) {
				return deserializeRelationship((id)propertyDescription);
			} else {
				if (error != NULL) {
					NSString *failureReason = [NSString stringWithFormat:NSLocalizedString(@"Property descriptions of class %@ are unsupported.", @""), propertyClassName];

					NSDictionary *userInfo = @{
						NSLocalizedDescriptionKey: NSLocalizedString(@"Could not deserialize managed object", @""),
						NSLocalizedFailureReasonErrorKey: failureReason,
					};

					*error = [NSError errorWithDomain:UAMTLManagedObjectAdapterErrorDomain code:UAMTLManagedObjectAdapterErrorUnsupportedManagedObjectPropertyType userInfo:userInfo];
				}

				return NO;
			}
		};

		if (!deserializeProperty(managedObjectProperties[managedObjectKey])) return nil;
	}

	return model;
}

+ (id)modelOfClass:(Class)modelClass fromManagedObject:(NSManagedObject *)managedObject error:(NSError **)error {
	CFMutableDictionaryRef processedObjects = CFDictionaryCreateMutable(NULL, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
	if (processedObjects == NULL) return nil;

	@onExit {
		CFRelease(processedObjects);
	};

	return [self modelOfClass:modelClass fromManagedObject:managedObject processedObjects:processedObjects error:error];
}

+ (id)modelOfClass:(Class)modelClass fromManagedObject:(NSManagedObject *)managedObject processedObjects:(CFMutableDictionaryRef)processedObjects error:(NSError **)error {
	NSParameterAssert(modelClass != nil);
	NSParameterAssert(processedObjects != nil);

	if (managedObject == nil) return nil;

	const void *existingModel = CFDictionaryGetValue(processedObjects, (__bridge void *)managedObject);
	if (existingModel != NULL) {
		return (__bridge id)existingModel;
	}

	if ([modelClass respondsToSelector:@selector(classForDeserializingManagedObject:)]) {
		modelClass = [modelClass classForDeserializingManagedObject:managedObject];
		if (modelClass == nil) {
			if (error != NULL) {
				NSDictionary *userInfo = @{
					NSLocalizedDescriptionKey: NSLocalizedString(@"Could not deserialize managed object", @""),
					NSLocalizedFailureReasonErrorKey: NSLocalizedString(@"No model class could be found to deserialize the object.", @"")
				};

				*error = [NSError errorWithDomain:UAMTLManagedObjectAdapterErrorDomain code:UAMTLManagedObjectAdapterErrorNoClassFound userInfo:userInfo];
			}

			return nil;
		}
	}

	UAMTLManagedObjectAdapter *adapter = [[self alloc] initWithModelClass:modelClass];
	return [adapter modelFromManagedObject:managedObject processedObjects:processedObjects error:error];
}

- (id)managedObjectFromModel:(id<NSObject, UAMTLModel, UAMTLManagedObjectSerializing>)model insertingIntoContext:(NSManagedObjectContext *)context processedObjects:(CFMutableDictionaryRef)processedObjects error:(NSError **)error {
	NSParameterAssert(model != nil);
	NSParameterAssert(context != nil);
	NSParameterAssert(processedObjects != nil);

	NSString *entityName = [model.class managedObjectEntityName];
	NSAssert(entityName != nil, @"%@ returned a nil +managedObjectEntityName", model.class);

	Class entityDescriptionClass = NSClassFromString(@"NSEntityDescription");
	NSAssert(entityDescriptionClass != nil, @"CoreData.framework must be linked to use UAMTLManagedObjectAdapter");

	Class fetchRequestClass = NSClassFromString(@"NSFetchRequest");
	NSAssert(fetchRequestClass != nil, @"CoreData.framework must be linked to use UAMTLManagedObjectAdapter");

	// If a uniquing predicate is provided, perform a fetch request to guarantee a unique managed object.
	__block NSManagedObject *managedObject = nil;
	NSPredicate *uniquingPredicate = [self uniquingPredicateForModel:model];

	if (uniquingPredicate != nil) {
		__block NSError *fetchRequestError = nil;
		__block BOOL encountedError = NO;
		managedObject = performInContext(context, ^ id {
			NSFetchRequest *fetchRequest = [[fetchRequestClass alloc] init];
			fetchRequest.entity = [entityDescriptionClass entityForName:entityName inManagedObjectContext:context];
			fetchRequest.predicate = uniquingPredicate;
			fetchRequest.returnsObjectsAsFaults = NO;
			fetchRequest.fetchLimit = 1;

			NSArray *results = [context executeFetchRequest:fetchRequest error:&fetchRequestError];

			if (results == nil) {
				encountedError = YES;
				if (error != NULL) {
					NSString *failureReason = [NSString stringWithFormat:NSLocalizedString(@"Failed to fetch a managed object for uniqing predicate \"%@\".", @""), uniquingPredicate];
					
					NSDictionary *userInfo = @{
						NSLocalizedDescriptionKey: NSLocalizedString(@"Could not serialize managed object", @""),
						NSLocalizedFailureReasonErrorKey: failureReason,
					};
					
					fetchRequestError = [NSError errorWithDomain:UAMTLManagedObjectAdapterErrorDomain code:UAMTLManagedObjectAdapterErrorUniqueFetchRequestFailed userInfo:userInfo];
				}
				
				return nil;
			}

			return results.UAMTL_firstObject;
		});

		if (encountedError && error != NULL) {
			*error = fetchRequestError;
			return nil;
		}
	}

	if (managedObject == nil) managedObject = [entityDescriptionClass insertNewObjectForEntityForName:entityName inManagedObjectContext:context];

	if (managedObject == nil) {
		if (error != NULL) {
			NSString *failureReason = [NSString stringWithFormat:NSLocalizedString(@"Failed to initialize a managed object from entity named \"%@\".", @""), entityName];

			NSDictionary *userInfo = @{
				NSLocalizedDescriptionKey: NSLocalizedString(@"Could not serialize managed object", @""),
				NSLocalizedFailureReasonErrorKey: failureReason,
			};

			*error = [NSError errorWithDomain:UAMTLManagedObjectAdapterErrorDomain code:UAMTLManagedObjectAdapterErrorInitializationFailed userInfo:userInfo];
		}

		return nil;
	}

	// Assign all errors to this variable to work around a memory problem.
	//
	// See https://github.com/github/UAMantle/pull/120 for more context.
	__block NSError *tmpError;

	// Pre-emptively consider this object processed, so that we don't get into
	// any cycles when processing its relationships.
	CFDictionaryAddValue(processedObjects, (__bridge void *)model, (__bridge void *)managedObject);

	NSDictionary *dictionaryValue = model.dictionaryValue;
	NSDictionary *managedObjectProperties = managedObject.entity.propertiesByName;

	[dictionaryValue enumerateKeysAndObjectsUsingBlock:^(NSString *propertyKey, id value, BOOL *stop) {
		NSString *managedObjectKey = [self managedObjectKeyForKey:propertyKey];
		if (managedObjectKey == nil) return;
		if ([value isEqual:NSNull.null]) value = nil;

		BOOL (^serializeAttribute)(NSAttributeDescription *) = ^(NSAttributeDescription *attributeDescription) {
			// Mark this as being autoreleased, because validateValue may return
			// a new object to be stored in this variable (and we don't want ARC to
			// double-free or leak the old or new values).
			__autoreleasing id transformedValue = value;

			NSValueTransformer *attributeTransformer = [self entityAttributeTransformerForKey:propertyKey];
			if (attributeTransformer != nil) transformedValue = [attributeTransformer transformedValue:transformedValue];

			if (![managedObject validateValue:&transformedValue forKey:managedObjectKey error:&tmpError]) return NO;
			[managedObject setValue:transformedValue forKey:managedObjectKey];

			return YES;
		};

		NSManagedObject * (^objectForRelationshipFromModel)(id) = ^ id (id model) {
			if (![model conformsToProtocol:@protocol(UAMTLModel)] || ![model conformsToProtocol:@protocol(UAMTLManagedObjectSerializing)]) {
				NSString *failureReason = [NSString stringWithFormat:NSLocalizedString(@"Property of class %@ cannot be encoded into an NSManagedObject.", @""), [model class]];

				NSDictionary *userInfo = @{
					NSLocalizedDescriptionKey: NSLocalizedString(@"Could not serialize managed object", @""),
					NSLocalizedFailureReasonErrorKey: failureReason
				};

				tmpError = [NSError errorWithDomain:UAMTLManagedObjectAdapterErrorDomain code:UAMTLManagedObjectAdapterErrorUnsupportedRelationshipClass userInfo:userInfo];

				return nil;
			}

			return [self.class managedObjectFromModel:model insertingIntoContext:context processedObjects:processedObjects error:&tmpError];
		};

		BOOL (^serializeRelationship)(NSRelationshipDescription *) = ^(NSRelationshipDescription *relationshipDescription) {
			if (value == nil) return YES;

			if ([relationshipDescription isToMany]) {
				if (![value conformsToProtocol:@protocol(NSFastEnumeration)]) {
					NSString *failureReason = [NSString stringWithFormat:NSLocalizedString(@"Property of class %@ cannot be encoded into a to-many relationship.", @""), [value class]];

					NSDictionary *userInfo = @{
						NSLocalizedDescriptionKey: NSLocalizedString(@"Could not serialize managed object", @""),
						NSLocalizedFailureReasonErrorKey: failureReason
					};

					tmpError = [NSError errorWithDomain:UAMTLManagedObjectAdapterErrorDomain code:UAMTLManagedObjectAdapterErrorUnsupportedRelationshipClass userInfo:userInfo];

					return NO;
				}

				id relationshipCollection;
				if ([relationshipDescription isOrdered]) {
					relationshipCollection = [NSMutableOrderedSet orderedSet];
				} else {
					relationshipCollection = [NSMutableSet set];
				}

				for (NSObject<UAMTLModel> *model in value) {
					NSManagedObject *nestedObject = objectForRelationshipFromModel(model);
					if (nestedObject == nil) return NO;

					[relationshipCollection addObject:nestedObject];
				}

				[managedObject setValue:relationshipCollection forKey:managedObjectKey];
			} else {
				NSManagedObject *nestedObject = objectForRelationshipFromModel(value);
				if (nestedObject == nil) return NO;

				[managedObject setValue:nestedObject forKey:managedObjectKey];
			}

			return YES;
		};

		BOOL (^serializeProperty)(NSPropertyDescription *) = ^(NSPropertyDescription *propertyDescription) {
			if (propertyDescription == nil) {
				NSString *failureReason = [NSString stringWithFormat:NSLocalizedString(@"No property by name \"%@\" exists on the entity.", @""), managedObjectKey];

				NSDictionary *userInfo = @{
					NSLocalizedDescriptionKey: NSLocalizedString(@"Could not serialize managed object", @""),
					NSLocalizedFailureReasonErrorKey: failureReason
				};

				tmpError = [NSError errorWithDomain:UAMTLManagedObjectAdapterErrorDomain code:UAMTLManagedObjectAdapterErrorInvalidManagedObjectKey userInfo:userInfo];

				return NO;
			}

			// Jump through some hoops to avoid referencing classes directly.
			NSString *propertyClassName = NSStringFromClass(propertyDescription.class);
			if ([propertyClassName isEqual:@"NSAttributeDescription"]) {
				return serializeAttribute((id)propertyDescription);
			} else if ([propertyClassName isEqual:@"NSRelationshipDescription"]) {
				return serializeRelationship((id)propertyDescription);
			} else {
				NSString *failureReason = [NSString stringWithFormat:NSLocalizedString(@"Property descriptions of class %@ are unsupported.", @""), propertyClassName];

				NSDictionary *userInfo = @{
					NSLocalizedDescriptionKey: NSLocalizedString(@"Could not serialize managed object", @""),
					NSLocalizedFailureReasonErrorKey: failureReason
				};

				tmpError = [NSError errorWithDomain:UAMTLManagedObjectAdapterErrorDomain code:UAMTLManagedObjectAdapterErrorUnsupportedManagedObjectPropertyType userInfo:userInfo];

				return NO;
			}
		};
		
		if (!serializeProperty(managedObjectProperties[managedObjectKey])) {
			performInContext(context, ^ id {
				[context deleteObject:managedObject];
				return nil;
			});

			managedObject = nil;
			*stop = YES;
		}
	}];

	if (managedObject != nil && ![managedObject validateForInsert:&tmpError]) {
		managedObject = performInContext(context, ^ id {
			[context deleteObject:managedObject];
			return nil;
		});
	}

	if (error != NULL) {
		*error = tmpError;
	}

	return managedObject;
}

+ (id)managedObjectFromModel:(id<NSObject, UAMTLModel, UAMTLManagedObjectSerializing>)model insertingIntoContext:(NSManagedObjectContext *)context error:(NSError **)error {
	CFDictionaryKeyCallBacks keyCallbacks = kCFTypeDictionaryKeyCallBacks;

	// Compare UAMTLModel keys using pointer equality, not -isEqual:.
	keyCallbacks.equal = NULL;

	CFMutableDictionaryRef processedObjects = CFDictionaryCreateMutable(NULL, 0, &keyCallbacks, &kCFTypeDictionaryValueCallBacks);
	if (processedObjects == NULL) return nil;

	@onExit {
		CFRelease(processedObjects);
	};

	return [self managedObjectFromModel:model insertingIntoContext:context processedObjects:processedObjects error:error];
}

+ (id)managedObjectFromModel:(id<NSObject, UAMTLModel, UAMTLManagedObjectSerializing>)model insertingIntoContext:(NSManagedObjectContext *)context processedObjects:(CFMutableDictionaryRef)processedObjects error:(NSError **)error {
	NSParameterAssert(model != nil);
	NSParameterAssert(context != nil);
	NSParameterAssert(processedObjects != nil);

	const void *existingManagedObject = CFDictionaryGetValue(processedObjects, (__bridge void *)model);
	if (existingManagedObject != NULL) {
		return (__bridge id)existingManagedObject;
	}

	UAMTLManagedObjectAdapter *adapter = [[self alloc] initWithModelClass:model.class];
	return [adapter managedObjectFromModel:model insertingIntoContext:context processedObjects:processedObjects error:error];
}

- (NSValueTransformer *)entityAttributeTransformerForKey:(NSString *)key {
	NSParameterAssert(key != nil);

	SEL selector = UAMTLSelectorWithKeyPattern(key, "EntityAttributeTransformer");
	if ([self.modelClass respondsToSelector:selector]) {
		NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[self.modelClass methodSignatureForSelector:selector]];
		invocation.target = self.modelClass;
		invocation.selector = selector;
		[invocation invoke];

		__unsafe_unretained id result = nil;
		[invocation getReturnValue:&result];
		return result;
	}

	if ([self.modelClass respondsToSelector:@selector(entityAttributeTransformerForKey:)]) {
		return [self.modelClass entityAttributeTransformerForKey:key];
	}

	return nil;
}

- (NSString *)managedObjectKeyForKey:(NSString *)key {
	NSParameterAssert(key != nil);

	id managedObjectKey = self.managedObjectKeysByPropertyKey[key];
	if ([managedObjectKey isEqual:NSNull.null]) return nil;

	if (managedObjectKey == nil) {
		return key;
	} else {
		return managedObjectKey;
	}
}

- (NSPredicate *)uniquingPredicateForModel:(NSObject<UAMTLModel, UAMTLManagedObjectSerializing> *)model {
	if (![self.modelClass respondsToSelector:@selector(propertyKeysForManagedObjectUniquing)]) return nil;

	NSSet *propertyKeys = [self.modelClass propertyKeysForManagedObjectUniquing];

	if (propertyKeys == nil) return nil;

	NSAssert(propertyKeys.count > 0, @"+propertyKeysForManagedObjectUniquing must not be empty.");

	NSMutableArray *subpredicates = [NSMutableArray array];
	for (NSString *propertyKey in propertyKeys) {
		NSString *managedObjectKey = [self managedObjectKeyForKey:propertyKey];

		NSAssert(managedObjectKey != nil, @"%@ must map to a managed object key.", propertyKey);

		id transformedValue = [model valueForKeyPath:propertyKey];

		NSValueTransformer *attributeTransformer = [self entityAttributeTransformerForKey:propertyKey];
		if (attributeTransformer != nil) transformedValue = [attributeTransformer transformedValue:transformedValue];

		NSPredicate *subpredicate = [NSPredicate predicateWithFormat:@"%K == %@", managedObjectKey, transformedValue];
		[subpredicates addObject:subpredicate];
	}
	
	return [NSCompoundPredicate andPredicateWithSubpredicates:subpredicates];
}

@end
