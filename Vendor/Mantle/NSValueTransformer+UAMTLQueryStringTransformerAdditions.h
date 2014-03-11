//
//  NSValueTransformer+UAMTLQueryStringTransformerAdditions.h
//  Mantle
//
//  Created by Rob Amos on 9/02/2014.
//  Copyright (c) 2014 GitHub. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSValueTransformer (UAMTLQueryStringTransformerAdditions)

// Creates a reversible transformer to convert a Query String dictionary into a UAMTLModel
// object, and vice-versa.
//
// modelClass - The UAMTLModel subclass to attempt to parse from the JSON. This
//              class must conform to <UAMTLQuerySerializing>. This argument must
//              not be nil.
//
// Returns a reversible transformer which uses UAMTLQueryAdapter for transforming
// values back and forth.
+ (NSValueTransformer *)UAMTL_QueryStringDictionaryTransformerWithModelClass:(Class)modelClass;

// Creates a reversible transformer to convert an array of Query String dictionaries
// into an array of UAMTLModel objects, and vice-versa.
//
// modelClass - The UAMTLModel subclass to attempt to parse from each JSON
//              dictionary. This class must conform to <UAMTLQuerySerializing>.
//              This argument must not be nil.
//
// Returns a reversible transformer which uses UAMTLQueryAdapter for transforming
// array elements back and forth.
+ (NSValueTransformer *)UAMTL_QueryStringArrayTransformerWithModelClass:(Class)modelClass;

@end
