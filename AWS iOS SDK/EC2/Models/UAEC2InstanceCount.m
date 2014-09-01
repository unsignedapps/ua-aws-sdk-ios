//
//  UAEC2InstanceCount.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceCount.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2InstanceCount

@synthesize state=_state, instanceCount=_instanceCount;

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
        @"state": @"ec2:state",
        @"instanceCount": @"ec2:instanceCount"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceCountsStateAvailable), @(UAEC2InstanceCountsStateSold), @(UAEC2InstanceCountsStateCancelled), @(UAEC2InstanceCountsStatePending) ]
                                               stringValues:@[ @"available", @"sold", @"cancelled", @"pending" ]
                                               unknownValue:@(UAEC2InstanceCountsStateUnknown)];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceCountsStateAvailable), @(UAEC2InstanceCountsStateSold), @(UAEC2InstanceCountsStateCancelled), @(UAEC2InstanceCountsStatePending) ]
                                               stringValues:@[ @"available", @"sold", @"cancelled", @"pending" ]
                                               unknownValue:@(UAEC2InstanceCountsStateUnknown)];
}

+ (NSValueTransformer *)instanceCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop