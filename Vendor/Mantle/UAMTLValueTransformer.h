//
//  UAMTLValueTransformer.h
//  Mantle
//
//  Created by Justin Spahr-Summers on 2012-09-11.
//  Copyright (c) 2012 GitHub. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef id (^UAMTLValueTransformerBlock)(id);

//
// A value transformer supporting block-based transformation.
//
@interface UAMTLValueTransformer : NSValueTransformer

// Returns a transformer which transforms values using the given block. Reverse
// transformations will not be allowed.
+ (instancetype)transformerWithBlock:(UAMTLValueTransformerBlock)transformationBlock;

// Returns a transformer which transforms values using the given block, for
// forward or reverse transformations.
+ (instancetype)reversibleTransformerWithBlock:(UAMTLValueTransformerBlock)transformationBlock;

// Returns a transformer which transforms values using the given blocks.
+ (instancetype)reversibleTransformerWithForwardBlock:(UAMTLValueTransformerBlock)forwardBlock reverseBlock:(UAMTLValueTransformerBlock)reverseBlock;

@end
