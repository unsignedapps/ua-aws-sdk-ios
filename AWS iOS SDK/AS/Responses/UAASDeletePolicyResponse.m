//
//  UAASDeletePolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeletePolicyResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDeletePolicyResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DeletePolicyResponse/AutoScaling:DeletePolicyResult/";
}

@end

#pragma clang diagnostic pop