//
//  UAEC2VolumeStatusDetail.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VolumeStatusDetail.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2VolumeStatusDetail

@synthesize name=_name, status=_status;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"name": @"ec2:name",
        @"status": @"ec2:status"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)nameQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeStatusNameIoEnabled), @(UAEC2VolumeStatusNameIoPerformance) ]
                                               stringValues:@[ @"io-enabled", @"io-performance" ]
                                               unknownValue:@(UAEC2VolumeStatusNameUnknown)];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeStatusDetailStatusPassed), @(UAEC2VolumeStatusDetailStatusFailed), @(UAEC2VolumeStatusDetailStatusNormal), @(UAEC2VolumeStatusDetailStatusDegraded), @(UAEC2VolumeStatusDetailStatusSeverelyDegraded), @(UAEC2VolumeStatusDetailStatusStalled), @(UAEC2VolumeStatusDetailStatusNotApplicable) ]
                                               stringValues:@[ @"passed", @"failed", @"normal", @"degraded", @"severely-degraded", @"stalled", @"not-applicable" ]
                                               unknownValue:@(UAEC2VolumeStatusDetailStatusUnknown)];
}

+ (NSValueTransformer *)nameXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeStatusNameIoEnabled), @(UAEC2VolumeStatusNameIoPerformance) ]
                                               stringValues:@[ @"io-enabled", @"io-performance" ]
                                               unknownValue:@(UAEC2VolumeStatusNameUnknown)];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeStatusDetailStatusPassed), @(UAEC2VolumeStatusDetailStatusFailed), @(UAEC2VolumeStatusDetailStatusNormal), @(UAEC2VolumeStatusDetailStatusDegraded), @(UAEC2VolumeStatusDetailStatusSeverelyDegraded), @(UAEC2VolumeStatusDetailStatusStalled), @(UAEC2VolumeStatusDetailStatusNotApplicable) ]
                                               stringValues:@[ @"passed", @"failed", @"normal", @"degraded", @"severely-degraded", @"stalled", @"not-applicable" ]
                                               unknownValue:@(UAEC2VolumeStatusDetailStatusUnknown)];
}

@end

#pragma clang diagnostic pop