//
//  NSError+UAMTLModelException.m
//  Mantle
//
//  Created by Robert Böhnke on 7/6/13.
//  Copyright (c) 2013 GitHub. All rights reserved.
//

#import "NSError+UAMTLModelException.h"

// The domain for errors originating from UAMTLModel.
static NSString * const UAMTLModelErrorDomain = @"UAMTLModelErrorDomain";

// An exception was thrown and caught.
static const NSInteger UAMTLModelErrorExceptionThrown = 1;

// Associated with the NSException that was caught.
static NSString * const UAMTLModelThrownExceptionErrorKey = @"UAMTLModelThrownException";

@implementation NSError (UAMTLModelException)

+ (instancetype)UAMTL_modelErrorWithException:(NSException *)exception {
	NSParameterAssert(exception != nil);

	NSDictionary *userInfo = @{
		NSLocalizedDescriptionKey: exception.description,
		NSLocalizedFailureReasonErrorKey: exception.reason,
		UAMTLModelThrownExceptionErrorKey: exception
	};

	return [NSError errorWithDomain:UAMTLModelErrorDomain code:UAMTLModelErrorExceptionThrown userInfo:userInfo];
}

@end
