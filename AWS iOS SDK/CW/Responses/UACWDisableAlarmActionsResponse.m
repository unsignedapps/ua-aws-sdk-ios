//
//  UACWDisableAlarmActionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDisableAlarmActionsResponse.h"

@implementation UACWDisableAlarmActionsResponse

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:DisableAlarmActionsResponse/cloudwatch:DisableAlarmActionsResult/";
}

@end
