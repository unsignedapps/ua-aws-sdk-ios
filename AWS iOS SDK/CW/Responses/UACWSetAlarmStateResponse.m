//
//  UACWSetAlarmStateResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWSetAlarmStateResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWSetAlarmStateResponse

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:SetAlarmStateResponse/cloudwatch:SetAlarmStateResult/";
}

@end

#pragma clang diagnostic pop