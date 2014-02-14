//
//  UACWPutMetricDataResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UACWPutMetricDataResponse.h"

@implementation UACWPutMetricDataResponse

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:PutMetricDataResponse/cloudwatch:PutMetricDataResult/";
}

@end
