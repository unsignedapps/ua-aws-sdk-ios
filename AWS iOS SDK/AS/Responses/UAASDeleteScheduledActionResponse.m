//
//  UAASDeleteScheduledActionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteScheduledActionResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDeleteScheduledActionResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DeleteScheduledActionResponse/AutoScaling:DeleteScheduledActionResult/";
}

@end

#pragma clang diagnostic pop