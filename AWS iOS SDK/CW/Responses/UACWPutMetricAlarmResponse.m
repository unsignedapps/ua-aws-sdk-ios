//
//  UACWPutMetricAlarmResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWPutMetricAlarmResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWPutMetricAlarmResponse

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:PutMetricAlarmResponse/cloudwatch:PutMetricAlarmResponse/";
}

@end

#pragma clang diagnostic pop