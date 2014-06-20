//
//  UAASSetInstanceHealthResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASSetInstanceHealthResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASSetInstanceHealthResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:SetInstanceHealthResponse/AutoScaling:SetInstanceHealthResult/";
}

@end

#pragma clang diagnostic pop