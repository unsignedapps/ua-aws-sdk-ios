//
//  UAASExecutePolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASExecutePolicyResponse.h"

@implementation UAASExecutePolicyResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:ExecutePolicyResponse/AutoScaling:ExecutePolicyResult/";
}

@end
