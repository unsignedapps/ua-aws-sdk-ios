//
//  UACWDeleteAlarmsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDeleteAlarmsResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWDeleteAlarmsResponse

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:DeleteAlarmsResponse/cloudwatch:DeleteAlarmsResult/";
}

@end

#pragma clang diagnostic pop