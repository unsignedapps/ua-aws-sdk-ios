//
//  UAIAMDeleteAccessKeyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMDeleteAccessKeyResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMDeleteAccessKeyResponse

+ (NSString *)XPathPrefix
{
    return @"./iam:DeleteAccessKeyResponse/";
}

@end

#pragma clang diagnostic pop