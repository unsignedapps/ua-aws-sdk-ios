//
//  UAASInstance.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASInstance.h"

@implementation UAASInstance

@synthesize instanceID=_instanceID, availabilityZone=_availabilityZone, lifecycleState=_lifecycleState, healthStatus=_healthStatus, launchConfigurationName=_launchConfigurationName;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceID": @"AutoScaling:InstanceId",
        @"availabilityZone": @"AutoScaling:AvailabilityZone",
        @"lifecycleState": @"AutoScaling:LifecycleState",
        @"healthStatus": @"AutoScaling:HealthStatus",
        @"launchConfigurationName": @"AutoScaling:LaunchConfigurationName"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)lifecycleStateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASInstanceLifecycleStatePending), @(UAASInstanceLifecycleStateQuarantined), @(UAASInstanceLifecycleStateInService), @(UAASInstanceLifecycleStateTerminating), @(UAASInstanceLifecycleStateTerminated) ]
                                               stringValues:@[ @"Pending", @"Quarantined", @"InService", @"Terminating", @"Terminated" ]
                                               unknownValue:@(UAASInstanceLifecycleStateUnknown)];
}

+ (NSValueTransformer *)lifecycleStateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASInstanceLifecycleStatePending), @(UAASInstanceLifecycleStateQuarantined), @(UAASInstanceLifecycleStateInService), @(UAASInstanceLifecycleStateTerminating), @(UAASInstanceLifecycleStateTerminated) ]
                                               stringValues:@[ @"Pending", @"Quarantined", @"InService", @"Terminating", @"Terminated" ]
                                               unknownValue:@(UAASInstanceLifecycleStateUnknown)];
}

@end
