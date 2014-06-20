//
//  UACWEnableAlarmActionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWEnableAlarmActionsResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWEnableAlarmActionsResponse

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:EnableAlarmActionsResponse/cloudwatch:EnableAlarmActionsResult/";
}

@end

#pragma clang diagnostic pop