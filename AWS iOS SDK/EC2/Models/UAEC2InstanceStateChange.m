//
//  UAEC2InstanceStateChange.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceStateChange.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2InstanceStateChange

@synthesize instanceID=_instanceID, currentState=_currentState, previousState=_previousState;

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
        @"instanceID": @"ec2:instanceId",
        @"currentState": @"ec2:currentState/ec2:name",
        @"previousState": @"ec2:previousState/ec2:name"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)currentStateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatePending), @(UAEC2InstanceStateRunning), @(UAEC2InstanceStateShuttingDown), @(UAEC2InstanceStateTerminated), @(UAEC2InstanceStateStopping), @(UAEC2InstanceStateStopped) ]
                                               stringValues:@[ @"pending", @"running", @"shutting-down", @"terminated", @"stopping", @"stopped" ]
                                               unknownValue:@(UAEC2InstanceStateUnknown)];
}

+ (NSValueTransformer *)previousStateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatePending), @(UAEC2InstanceStateRunning), @(UAEC2InstanceStateShuttingDown), @(UAEC2InstanceStateTerminated), @(UAEC2InstanceStateStopping), @(UAEC2InstanceStateStopped) ]
                                               stringValues:@[ @"pending", @"running", @"shutting-down", @"terminated", @"stopping", @"stopped" ]
                                               unknownValue:@(UAEC2InstanceStateUnknown)];
}

+ (NSValueTransformer *)currentStateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatePending), @(UAEC2InstanceStateRunning), @(UAEC2InstanceStateShuttingDown), @(UAEC2InstanceStateTerminated), @(UAEC2InstanceStateStopping), @(UAEC2InstanceStateStopped) ]
                                               stringValues:@[ @"pending", @"running", @"shutting-down", @"terminated", @"stopping", @"stopped" ]
                                               unknownValue:@(UAEC2InstanceStateUnknown)];
}

+ (NSValueTransformer *)previousStateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatePending), @(UAEC2InstanceStateRunning), @(UAEC2InstanceStateShuttingDown), @(UAEC2InstanceStateTerminated), @(UAEC2InstanceStateStopping), @(UAEC2InstanceStateStopped) ]
                                               stringValues:@[ @"pending", @"running", @"shutting-down", @"terminated", @"stopping", @"stopped" ]
                                               unknownValue:@(UAEC2InstanceStateUnknown)];
}

@end

#pragma clang diagnostic pop