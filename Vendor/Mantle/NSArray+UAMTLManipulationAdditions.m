//
//  NSArray+UAMTLManipulationAdditions.m
//  Mantle
//
//  Created by Josh Abernathy on 9/19/12.
//  Copyright (c) 2012 GitHub. All rights reserved.
//

#import "NSArray+UAMTLManipulationAdditions.h"

@interface NSArray (UAMTLDeclarations)

// This declaration is needed so UAMantle can be compiled with SDK 6 / 10.8.
- (id)firstObject;

@end

@implementation NSArray (UAMTLManipulationAdditions)

- (id)UAMTL_firstObject {
	return self.firstObject;
}

- (instancetype)UAMTL_arrayByRemovingObject:(id)object {
	NSMutableArray *result = [self mutableCopy];
	[result removeObject:object];
	return result;
}

- (instancetype)UAMTL_arrayByRemovingFirstObject {
	if (self.count == 0) return self;

	return [self subarrayWithRange:NSMakeRange(1, self.count - 1)];
}

- (instancetype)UAMTL_arrayByRemovingLastObject {
	if (self.count == 0) return self;

	return [self subarrayWithRange:NSMakeRange(0, self.count - 1)];
}

@end
