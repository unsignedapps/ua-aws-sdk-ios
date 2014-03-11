//
//  UAAWSRequest+UAMTLModel.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 3/02/2014.
//
//

#import "UAAWSRequest+UAMTLModel.h"
#import "NSError+UAMTLModelException.h"
#import "UAEXTRuntimeExtensions.h"
#import "UAEXTScope.h"
#import "UAMTLReflection.h"
#import <objc/runtime.h>

// Used to cache the reflection performed in +propertyKeys.
static void *MTLModelCachedPropertyKeysKey = &MTLModelCachedPropertyKeysKey;

// Validates a value for an object and sets it if necessary.
//
// obj         - The object for which the value is being validated. This value
//               must not be nil.
// key         - The name of one of `obj`s properties. This value must not be
//               nil.
// value       - The new value for the property identified by `key`.
// forceUpdate - If set to `YES`, the value is being updated even if validating
//               it did not change it.
// error       - If not NULL, this may be set to any error that occurs during
//               validation
//
// Returns YES if `value` could be validated and set, or NO if an error
// occurred.
static BOOL UAMTLValidateAndSetValue(id obj, NSString *key, id value, BOOL forceUpdate, NSError **error) {
	// Mark this as being autoreleased, because validateValue may return
	// a new object to be stored in this variable (and we don't want ARC to
	// double-free or leak the old or new values).
	__autoreleasing id validatedValue = value;
    
	@try {
		if (![obj validateValue:&validatedValue forKey:key error:error]) return NO;
        
		if (forceUpdate || value != validatedValue) {
			[obj setValue:validatedValue forKey:key];
		}
        
		return YES;
	} @catch (NSException *ex) {
		NSLog(@"*** Caught exception setting key \"%@\" : %@", key, ex);
        
		// Fail fast in Debug builds.
#if DEBUG
		@throw ex;
#else
		if (error != NULL) {
			*error = [NSError UAMTL_modelErrorWithException:ex];
		}
        
		return NO;
#endif
	}
}

@interface UAAWSRequest (UAMTLModelExtensionsInternal)

@property (nonatomic) NSUInteger UA_PollingAttempts;

// Enumerates all properties of the receiver's class hierarchy, starting at the
// receiver, and continuing up until (but not including) UAMTLModel.
//
// The given block will be invoked multiple times for any properties declared on
// multiple classes in the hierarchy.
+ (void)enumeratePropertiesUsingBlock:(void (^)(objc_property_t property, BOOL *stop))block;

// The dirty properties.
@property (nonatomic, strong) NSMutableArray *UA_dirtyProperties;

@end

@implementation UAAWSRequest (UAMTLModel)

#pragma mark Lifecycle

+ (instancetype)modelWithDictionary:(NSDictionary *)dictionary error:(NSError **)error {
	return [[self alloc] initWithDictionary:dictionary error:error];
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary error:(NSError **)error {
	self = [self init];
	if (self == nil) return nil;
    
	for (NSString *key in dictionary) {
		// Mark this as being autoreleased, because validateValue may return
		// a new object to be stored in this variable (and we don't want ARC to
		// double-free or leak the old or new values).
		__autoreleasing id value = [dictionary objectForKey:key];
        
		if ([value isEqual:NSNull.null]) value = nil;
        
		BOOL success = UAMTLValidateAndSetValue(self, key, value, YES, error);
		if (!success) return nil;
	}
    
	return self;
}

#pragma mark Reflection

+ (void)enumeratePropertiesUsingBlock:(void (^)(objc_property_t property, BOOL *stop))block {
	Class cls = self;
	BOOL stop = NO;
    
	while (!stop && ![cls isEqual:[UAAWSRequest class]]) {
		unsigned count = 0;
		objc_property_t *properties = class_copyPropertyList(cls, &count);
        
		cls = cls.superclass;
		if (properties == NULL) continue;
        
		@onExit {
			free(properties);
		};
        
		for (unsigned i = 0; i < count; i++) {
			block(properties[i], &stop);
			if (stop) break;
		}
	}
}

+ (NSSet *)propertyKeys {
	NSSet *cachedKeys = objc_getAssociatedObject(self, MTLModelCachedPropertyKeysKey);
	if (cachedKeys != nil) return cachedKeys;
    
	NSMutableSet *keys = [NSMutableSet set];
    
	[self enumeratePropertiesUsingBlock:^(objc_property_t property, BOOL *stop) {
		UAMTL_propertyAttributes *attributes = UAMTL_copyPropertyAttributes(property);
		@onExit {
			free(attributes);
		};
        
		if (attributes->readonly && attributes->ivar == NULL) return;
        
		NSString *key = @(property_getName(property));
		[keys addObject:key];
	}];
    
	// It doesn't really matter if we replace another thread's work, since we do
	// it atomically and the result should be the same.
	objc_setAssociatedObject(self, MTLModelCachedPropertyKeysKey, keys, OBJC_ASSOCIATION_COPY);
    
	return keys;
}

- (NSDictionary *)dictionaryValue {
	return [self dictionaryWithValuesForKeys:self.class.propertyKeys.allObjects];
}

#pragma mark Merging

- (void)mergeValueForKey:(NSString *)key fromModel:(NSObject<UAMTLModel> *)model {
	NSParameterAssert(key != nil);
    
	SEL selector = UAMTLSelectorWithCapitalizedKeyPattern("merge", key, "FromModel:");
	if (![self respondsToSelector:selector]) {
		if (model != nil) {
			[self setValue:[model valueForKey:key] forKey:key];
		}
        
		return;
	}
    
	NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:selector]];
	invocation.target = self;
	invocation.selector = selector;
    
	[invocation setArgument:&model atIndex:2];
	[invocation invoke];
}

- (void)mergeValuesForKeysFromModel:(NSObject<UAMTLModel> *)model {
	for (NSString *key in self.class.propertyKeys) {
		[self mergeValueForKey:key fromModel:model];
	}
}

#pragma mark Validation

- (BOOL)validate:(NSError **)error {
	for (NSString *key in self.class.propertyKeys) {
		id value = [self valueForKey:key];
        
		BOOL success = UAMTLValidateAndSetValue(self, key, value, NO, error);
		if (!success) return NO;
	}
    
	return YES;
}

#pragma mark NSCopying

- (instancetype)copyWithZone:(NSZone *)zone
{
	UAAWSRequest *copy = [[self.class allocWithZone:zone] initWithDictionary:self.dictionaryValue error:NULL];
    [copy setUA_CheckImmediately:self.UA_CheckImmediately];
    [copy setUA_Credentials:self.UA_Credentials];
    [copy setUA_Owner:self.UA_Owner];
    [copy setUA_Region:self.UA_Region];
    [copy setUA_RequestCompletionBlock:self.UA_RequestCompletionBlock];
    [copy setUA_ShouldContinueWaiting:self.UA_ShouldContinueWaiting];
    [copy setUA_PollingAttempts:self.UA_PollingAttempts];
    return copy;
}

#pragma mark NSObject

- (NSString *)description {
	return [NSString stringWithFormat:@"<%@: %p> %@", self.class, self, self.dictionaryValue];
}

- (NSUInteger)hash {
	NSUInteger value = 0;
    
	for (NSString *key in self.class.propertyKeys) {
		value ^= [[self valueForKey:key] hash];
	}
    
	return value;
}

- (BOOL)isEqual:(NSObject<UAMTLModel> *)model {
	if (self == model) return YES;
	if (![model isMemberOfClass:self.class]) return NO;
    
	for (NSString *key in self.class.propertyKeys) {
		id selfValue = [self valueForKey:key];
		id modelValue = [model valueForKey:key];
        
		BOOL valuesEqual = ((selfValue == nil && modelValue == nil) || [selfValue isEqual:modelValue]);
		if (!valuesEqual) return NO;
	}
    
	return YES;
}

#pragma mark - Serialization Control

- (BOOL)canSerializePropertyKey:(NSString *)key
{
    // if there is no dirty properties list, or its empty, or it has our property in it.
    return self.UA_dirtyProperties == nil || [self.UA_dirtyProperties count] == 0 || [self.UA_dirtyProperties containsObject:key];
}

@end
