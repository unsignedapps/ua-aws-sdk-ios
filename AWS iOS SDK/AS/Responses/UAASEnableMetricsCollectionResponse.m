//
//  UAASEnableMetricsCollectionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASEnableMetricsCollectionResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASEnableMetricsCollectionResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:EnableMetricsCollectionResponse/AutoScaling:EnableMetricsCollectionResult/";
}

@end

#pragma clang diagnostic pop