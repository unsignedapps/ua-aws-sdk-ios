//
//  UACWPutMetricDataResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWPutMetricDataResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWPutMetricDataResponse

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:PutMetricDataResponse/cloudwatch:PutMetricDataResult/";
}

@end

#pragma clang diagnostic pop