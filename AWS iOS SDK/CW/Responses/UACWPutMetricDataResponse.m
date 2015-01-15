//
//  UACWPutMetricDataResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UACWPutMetricDataResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWPutMetricDataResponse

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:PutMetricDataResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"requestID": @"cloudwatch:ResponseMetadata/cloudwatch:RequestId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop