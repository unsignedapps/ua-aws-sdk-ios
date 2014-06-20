//
//  UACWDisableAlarmActionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDisableAlarmActionsResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWDisableAlarmActionsResponse

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:DisableAlarmActionsResponse/cloudwatch:DisableAlarmActionsResult/";
}

@end

#pragma clang diagnostic pop