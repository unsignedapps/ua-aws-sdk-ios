//
//  UAASSetDesiredCapacityResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASSetDesiredCapacityResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASSetDesiredCapacityResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:ResumeProcessesResponse/AutoScaling:ResumeProcessesResult/";
}

@end

#pragma clang diagnostic pop