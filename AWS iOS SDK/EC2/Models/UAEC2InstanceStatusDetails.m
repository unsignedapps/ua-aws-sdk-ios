//
//  UAEC2InstanceStatusDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceStatusDetails.h"

@implementation UAEC2InstanceStatusDetails

@synthesize name=_name, status=_status, impairedSince=_impairedSince;

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
        @"status": @"ec2:status",
        @"impairedSince": @"ec2:impairedSince"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)nameQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatusDetailsNameReachability) ]
                                               stringValues:@[ @"reachability" ]
                                               unknownValue:@(UAEC2InstanceStatusDetailsNameUnknown)];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatusDetailsStatusPassed), @(UAEC2InstanceStatusDetailsStatusFailed), @(UAEC2InstanceStatusDetailsStatusInsufficientData) ]
                                               stringValues:@[ @"passed", @"failed", @"insufficient-data" ]
                                               unknownValue:@(UAEC2InstanceStatusDetailsStatusUnknown)];
}

+ (NSValueTransformer *)impairedSinceQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)nameXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatusDetailsNameReachability) ]
                                               stringValues:@[ @"reachability" ]
                                               unknownValue:@(UAEC2InstanceStatusDetailsNameUnknown)];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatusDetailsStatusPassed), @(UAEC2InstanceStatusDetailsStatusFailed), @(UAEC2InstanceStatusDetailsStatusInsufficientData) ]
                                               stringValues:@[ @"passed", @"failed", @"insufficient-data" ]
                                               unknownValue:@(UAEC2InstanceStatusDetailsStatusUnknown)];
}

+ (NSValueTransformer *)impairedSinceXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end
