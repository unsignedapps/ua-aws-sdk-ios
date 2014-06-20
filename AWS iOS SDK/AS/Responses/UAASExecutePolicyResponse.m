//
//  UAASExecutePolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASExecutePolicyResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASExecutePolicyResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:ExecutePolicyResponse/AutoScaling:ExecutePolicyResult/";
}

@end

#pragma clang diagnostic pop