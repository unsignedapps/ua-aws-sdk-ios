//
//  NSValueTransformer+UAMTLInversionAdditions.m
//  Mantle
//
//  Created by Justin Spahr-Summers on 2013-05-18.
//  Copyright (c) 2013 GitHub. All rights reserved.
//

#import "NSValueTransformer+UAMTLInversionAdditions.h"
#import "UAMTLValueTransformer.h"

@implementation NSValueTransformer (UAMTLInversionAdditions)

- (NSValueTransformer *)UAMTL_invertedTransformer {
	NSParameterAssert(self.class.allowsReverseTransformation);

	return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^(id value) {
		return [self reverseTransformedValue:value];
	} reverseBlock:^(id value) {
		return [self transformedValue:value];
	}];
}

@end
