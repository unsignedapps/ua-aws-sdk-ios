//
//  NSValueTransformer+UAMTLPredefinedTransformerAdditions.h
//  Mantle
//
//  Created by Justin Spahr-Summers on 2012-09-27.
//  Copyright (c) 2012 GitHub. All rights reserved.
//

#import <Foundation/Foundation.h>

// The name for a value transformer that converts strings into URLs and back.
extern NSString * const UAMTLURLValueTransformerName;

// Ensure an NSNumber is backed by __NSCFBoolean/CFBooleanRef
//
// NSJSONSerialization, and likely other serialization libraries, ordinarily
// serialize NSNumbers as numbers, and thus booleans would be serialized as
// 0/1. The exception is when the NSNumber is backed by __NSCFBoolean, which,
// though very much an implementation detail, is detected and serialized as a
// proper boolean.
extern NSString * const UAMTLBooleanValueTransformerName;

@interface NSValueTransformer (UAMTLPredefinedTransformerAdditions)

// Creates a reversible transformer to convert a JSON dictionary into a UAMTLModel
// object, and vice-versa.
//
// modelClass - The UAMTLModel subclass to attempt to parse from the JSON. This
//              class must conform to <UAMTLJSONSerializing>. This argument must
//              not be nil.
//
// Returns a reversible transformer which uses UAMTLJSONAdapter for transforming
// values back and forth.
+ (NSValueTransformer *)UAMTL_JSONDictionaryTransformerWithModelClass:(Class)modelClass;

// Creates a reversible transformer to convert an array of JSON dictionaries
// into an array of UAMTLModel objects, and vice-versa.
//
// modelClass - The UAMTLModel subclass to attempt to parse from each JSON
//              dictionary. This class must conform to <UAMTLJSONSerializing>.
//              This argument must not be nil.
//
// Returns a reversible transformer which uses UAMTLJSONAdapter for transforming
// array elements back and forth.
+ (NSValueTransformer *)UAMTL_JSONArrayTransformerWithModelClass:(Class)modelClass;

// A reversible value transformer to transform between the keys and objects of a
// dictionary.
//
// dictionary - The dictionary whose keys and values we should transform between.
//
// Can for example be used for transforming between enum values and their string
// representation.
//
//   NSValueTransformer *valueTransformer = [NSValueTransformer UAMTL_valueMappingTransformerWithDictionary:@{
//     @"foo": @(EnumDataTypeFoo),
//     @"bar": @(EnumDataTypeBar),
//   }];
//
// Returns a transformer which will map from keys to objects for forward
// transformations, and from objects to keys for reverse transformations.
+ (NSValueTransformer *)UAMTL_valueMappingTransformerWithDictionary:(NSDictionary *)dictionary;

@end

@interface NSValueTransformer (UnavailableUAMTLPredefinedTransformerAdditions)

+ (NSValueTransformer *)UAMTL_externalRepresentationTransformerWithModelClass:(Class)modelClass __attribute__((deprecated("Replaced by +UAMTL_JSONDictionaryTransformerWithModelClass:")));
+ (NSValueTransformer *)UAMTL_externalRepresentationArrayTransformerWithModelClass:(Class)modelClass __attribute__((deprecated("Replaced by +UAMTL_JSONArrayTransformerWithModelClass:")));

@end
