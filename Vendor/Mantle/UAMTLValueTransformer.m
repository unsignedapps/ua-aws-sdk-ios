//
//  UAMTLValueTransformer.m
//  Mantle
//
//  Created by Justin Spahr-Summers on 2012-09-11.
//  Copyright (c) 2012 GitHub. All rights reserved.
//

#import "UAMTLValueTransformer.h"

//
// Any UAMTLValueTransformer supporting reverse transformation. Necessary because
// +allowsReverseTransformation is a class method.
//
@interface UAMTLReversibleValueTransformer : UAMTLValueTransformer
@end

@interface UAMTLValueTransformer ()

@property (nonatomic, copy, readonly) UAMTLValueTransformerBlock forwardBlock;
@property (nonatomic, copy, readonly) UAMTLValueTransformerBlock reverseBlock;

@end

@implementation UAMTLValueTransformer

#pragma mark Lifecycle

+ (instancetype)transformerWithBlock:(UAMTLValueTransformerBlock)transformationBlock {
	return [[self alloc] initWithForwardBlock:transformationBlock reverseBlock:nil];
}

+ (instancetype)reversibleTransformerWithBlock:(UAMTLValueTransformerBlock)transformationBlock {
	return [self reversibleTransformerWithForwardBlock:transformationBlock reverseBlock:transformationBlock];
}

+ (instancetype)reversibleTransformerWithForwardBlock:(UAMTLValueTransformerBlock)forwardBlock reverseBlock:(UAMTLValueTransformerBlock)reverseBlock {
	return [[UAMTLReversibleValueTransformer alloc] initWithForwardBlock:forwardBlock reverseBlock:reverseBlock];
}

- (id)initWithForwardBlock:(UAMTLValueTransformerBlock)forwardBlock reverseBlock:(UAMTLValueTransformerBlock)reverseBlock {
	NSParameterAssert(forwardBlock != nil);

	self = [super init];
	if (self == nil) return nil;

	_forwardBlock = [forwardBlock copy];
	_reverseBlock = [reverseBlock copy];

	return self;
}

#pragma mark NSValueTransformer

+ (BOOL)allowsReverseTransformation {
	return NO;
}

+ (Class)transformedValueClass {
	return [NSObject class];
}

- (id)transformedValue:(id)value {
	return self.forwardBlock(value);
}

@end

@implementation UAMTLReversibleValueTransformer

#pragma mark Lifecycle

- (id)initWithForwardBlock:(UAMTLValueTransformerBlock)forwardBlock reverseBlock:(UAMTLValueTransformerBlock)reverseBlock {
	NSParameterAssert(reverseBlock != nil);
	return [super initWithForwardBlock:forwardBlock reverseBlock:reverseBlock];
}

#pragma mark NSValueTransformer

+ (BOOL)allowsReverseTransformation {
	return YES;
}

- (id)reverseTransformedValue:(id)value {
	return self.reverseBlock(value);
}

@end
