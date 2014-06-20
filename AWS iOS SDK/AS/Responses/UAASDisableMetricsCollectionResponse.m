//
//  UAASDisableMetricsCollectionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDisableMetricsCollectionResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDisableMetricsCollectionResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DisableMetricsCollectionResponse/AutoScaling:DisableMetricsCollectionResult/";
}

@end

#pragma clang diagnostic pop