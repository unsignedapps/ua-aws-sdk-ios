//
//  UAMTLQueryAdapter.m
//  Mantle
//
//  Created by Robert Amos on 01/02/2014.
//  Copyright (c) 2014 Robert Amos. All rights reserved.
//

#import "UAMTLQueryAdapter.h"
#import "UAMTLModel.h"
#import "UAMTLReflection.h"
#import "UAMTLValueTransformer.h"
#import "NSString+UAURLEscape.h"

NSString * const UAMTLQueryAdapterErrorDomain = @"UAMTLQueryAdapterErrorDomain";
//const NSInteger UAMTLXMLAdapterErrorNoClassFound = 2;

// An exception was thrown and caught.
//static const NSInteger UAMTLXMLAdapterErrorExceptionThrown = 1;

// Associated with the NSException that was caught.
//static NSString * const UAMTLQueryAdapterThrownExceptionErrorKey = @"UAMTLXMLAdapterThrownException";

@interface UAMTLQueryAdapter ()

@property (nonatomic, strong, readonly) Class modelClass;
@property (nonatomic, copy, readonly) NSDictionary *queryStringKeyPathsByPropertyKey;

//- (NSDictionary *)dictionaryFromQueryString:(NSString *)stringValue;
- (NSValueTransformer *)queryStringTransformerForKey:(NSString *)key;
+ (NSArray *)queryArrayFromDictionary:(NSDictionary *)dictionary;

@end


@implementation UAMTLQueryAdapter

+ (id)modelOfClass:(Class)modelClass fromQueryString:(NSString *)queryString error:(NSError *__autoreleasing *)error
{
    NSAssert(NO, @"Serialising from query string not supported!");
    return nil;
    
    //	UAMTLQueryAdapter *adapter = [[self alloc] initWithQueryString:queryString modelClass:modelClass error:error];
    //	return adapter.model;
}

+ (NSString *)queryStringFromModel:(NSObject<UAMTLModel,UAMTLQuerySerializing> *)model
{
	UAMTLQueryAdapter *adapter = [[self alloc] initWithModel:model];
	return [adapter queryString];
}

//- (id)initWithQueryString:(NSString *)queryString modelClass:(Class)modelClass error:(NSError *__autoreleasing *)error
//{
//	NSParameterAssert(modelClass != nil);
//	NSParameterAssert([modelClass isSubclassOfClass:UAMTLModel.class]);
//	NSParameterAssert([modelClass conformsToProtocol:@protocol(UAMTLQuerySerializing)]);
//
//	if (queryString == nil) return nil;
//
//	self = [super init];
//	if (self == nil) return nil;
//
//	_modelClass = modelClass;
//	_queryStringKeyPathsByPropertyKey = [[modelClass queryStringKeyPathsByPropertyKey] copy];
//
//	NSMutableDictionary *dictionaryValue = [[NSMutableDictionary alloc] initWithCapacity:0];
//
//	for (NSString *propertyKey in [self.modelClass propertyKeys])
//    {
//		NSString *JSONKeyPath = [self JSONKeyPathForKey:propertyKey];
//		if (JSONKeyPath == nil) continue;
//
//		id value = [JSONDictionary valueForKeyPath:JSONKeyPath];
//		if (value == nil) continue;
//
//		@try {
//			NSValueTransformer *transformer = [self JSONTransformerForKey:propertyKey];
//			if (transformer != nil) {
//				// Map NSNull -> nil for the transformer, and then back for the
//				// dictionary we're going to insert into.
//				if ([value isEqual:NSNull.null]) value = nil;
//				value = [transformer transformedValue:value] ?: NSNull.null;
//			}
//
//			dictionaryValue[propertyKey] = value;
//		} @catch (NSException *ex) {
//			NSLog(@"*** Caught exception %@ parsing JSON key path \"%@\" from: %@", ex, JSONKeyPath, JSONDictionary);
//
//			// Fail fast in Debug builds.
//#if DEBUG
//			@throw ex;
//#else
//			if (error != NULL) {
//				NSDictionary *userInfo = @{
//                                           NSLocalizedDescriptionKey: ex.description,
//                                           NSLocalizedFailureReasonErrorKey: ex.reason,
//                                           UAMTLJSONAdapterThrownExceptionErrorKey: ex
//                                           };
//
//				*error = [NSError errorWithDomain:UAMTLJSONAdapterErrorDomain code:UAMTLJSONAdapterErrorExceptionThrown userInfo:userInfo];
//			}
//
//			return nil;
//#endif
//		}
//	}
//
//	_model = [self.modelClass modelWithDictionary:dictionaryValue error:error];
//	if (_model == nil) return nil;
//
//	return self;
//
//}

- (id)initWithModel:(NSObject<UAMTLModel,UAMTLQuerySerializing> *)model
{
	NSParameterAssert(model != nil);
    
	self = [super init];
	if (self == nil) return nil;
    
	_model = model;
	_modelClass = model.class;
	_queryStringKeyPathsByPropertyKey = [[model.class queryStringKeyPathsByPropertyKey] copy];
    
	return self;
}

#pragma mark Serialization

- (NSString *)queryString
{
    return [[self class] queryStringFromDictionary:[self dictionary]];
}

+ (NSString *)queryStringFromDictionary:(NSDictionary *)dictionary
{
    return [[self queryArrayFromDictionary:dictionary] componentsJoinedByString:@"&"];
}

+ (NSArray *)queryArrayFromDictionary:(NSDictionary *)dictionary
{
    NSMutableArray *queryArray = [[NSMutableArray alloc] initWithCapacity:0];
    
    for (NSString *key in [[dictionary allKeys] sortedArrayUsingSelector:@selector(compare:)])
    {
        id object = [dictionary objectForKey:key];
        if ([object isEqual:[NSNull null]])
            continue;
        
        NSString *encodedKey = [key stringByURLEscaping];
        
        // straight strings
        if ([object isKindOfClass:[NSString class]])
            [queryArray addObject:[NSString stringWithFormat:@"%@=%@", encodedKey, [((NSString *)object) stringByURLEscaping]]];
        
        // numbers
        else if ([object isKindOfClass:[NSNumber class]])
            [queryArray addObject:[NSString stringWithFormat:@"%@=%@", encodedKey, object]];
        
        // dictionaries
        else if ([object isKindOfClass:[NSDictionary class]])
        {
            NSArray *innerArray = [self queryArrayFromDictionary:object];
            for (NSString *innerString in innerArray)
                [queryArray addObject:[NSString stringWithFormat:@"%@.%@", encodedKey, innerString]];
            
            // arrays
        } else if ([object isKindOfClass:[NSArray class]])
        {
            NSArray *array = (NSArray *)object;
            for (NSUInteger i = 0; i < ([array count]); i++)
            {
                id innerObject = [array objectAtIndex:i];
                
                // straight strings
                if ([innerObject isKindOfClass:[NSString class]])
                    [queryArray addObject:[NSString stringWithFormat:@"%@.%lu=%@", encodedKey, (unsigned long)i+1, [((NSString *)innerObject) stringByURLEscaping]]];
                
                // numbers
                else if ([innerObject isKindOfClass:[NSNumber class]])
                    [queryArray addObject:[NSString stringWithFormat:@"%@.%lu=%@", encodedKey, (unsigned long)i+1, innerObject]];
                
                // dictionaries
                else if ([innerObject isKindOfClass:[NSDictionary class]])
                {
                    NSArray *innerArray = [self queryArrayFromDictionary:innerObject];
                    for (NSString *innerString in innerArray)
                        [queryArray addObject:[NSString stringWithFormat:@"%@.%lu.%@", encodedKey, (unsigned long)i+1, innerString]];
                }
            }
        }
    }
    
    return queryArray;
}

- (NSDictionary *)dictionary
{
	NSDictionary *dictionaryValue = self.model.dictionaryValue;
	NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithCapacity:dictionaryValue.count];
    
	[dictionaryValue enumerateKeysAndObjectsUsingBlock:^(NSString *propertyKey, id value, BOOL *stop)
     {
         // find out if the property is allowed to be serialised
         if ([self.model respondsToSelector:@selector(canSerializePropertyKey:)] && ![self.model canSerializePropertyKey:propertyKey])
             return;
         
         NSString *keyPath = [self queryStringKeyPathForKey:propertyKey];
         if (keyPath == nil) return;
         
         NSValueTransformer *transformer = [self queryStringTransformerForKey:propertyKey];
         if ([transformer.class allowsReverseTransformation])
         {
             // Map NSNull -> nil for the transformer, and then back for the
             // dictionaryValue we're going to insert into.
             if ([value isEqual:NSNull.null]) value = nil;
             value = [transformer reverseTransformedValue:value] ?: NSNull.null;
         }
         
         NSArray *keyPathComponents = [keyPath componentsSeparatedByString:@"."];
         
         // Set up dictionaries at each step of the key path.
         id obj = dictionary;
         for (NSString *component in keyPathComponents)
         {
             if ([obj valueForKey:component] == nil)
             {
                 // Insert an empty mutable dictionary at this spot so that we
                 // can set the whole key path afterward.
                 [obj setValue:[NSMutableDictionary dictionary] forKey:component];
             }
             
             obj = [obj valueForKey:component];
         }
         
         [dictionary setValue:value forKeyPath:keyPath];
     }];
    
    return dictionary;
}

- (NSValueTransformer *)queryStringTransformerForKey:(NSString *)key
{
	NSParameterAssert(key != nil);
    
	SEL selector = UAMTLSelectorWithKeyPattern(key, "QueryStringTransformer");
	if ([self.modelClass respondsToSelector:selector])
    {
		NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[self.modelClass methodSignatureForSelector:selector]];
		invocation.target = self.modelClass;
		invocation.selector = selector;
		[invocation invoke];
        
		__unsafe_unretained id result = nil;
		[invocation getReturnValue:&result];
		return result;
	}
    
	if ([self.modelClass respondsToSelector:@selector(queryStringTransformerForKey:)])
    {
		return [self.modelClass queryStringTransformerForKey:key];
	}
    
	return nil;
}

- (NSString *)queryStringKeyPathForKey:(NSString *)key {
	NSParameterAssert(key != nil);
    
	id keyPath = self.queryStringKeyPathsByPropertyKey[key];
	if ([keyPath isEqual:NSNull.null]) return nil;
    
	if (keyPath == nil) {
		return key;
	} else {
		return keyPath;
	}
}

@end
