//
//  UACWPutMetricDataResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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
