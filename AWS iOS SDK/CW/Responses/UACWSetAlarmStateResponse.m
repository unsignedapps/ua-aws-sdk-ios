//
//  UACWSetAlarmStateResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UACWSetAlarmStateResponse.h"

@implementation UACWSetAlarmStateResponse

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:SetAlarmStateResponse/cloudwatch:SetAlarmStateResult/";
}

@end
