//
//  UAASAutoScalingInstanceDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASAutoScalingInstanceDetails.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASAutoScalingInstanceDetails

@synthesize instanceID=_instanceID, autoScalingGroupName=_autoScalingGroupName, availabilityZone=_availabilityZone, lifecycleState=_lifecycleState, healthStatus=_healthStatus, launchConfigurationName=_launchConfigurationName;

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
        @"autoScalingGroupName": @"AutoScaling:AutoScalingGroupName",
        @"availabilityZone": @"AutoScaling:AvailabilityZone",
        @"lifecycleState": @"AutoScaling:LifecycleState",
        @"healthStatus": @"AutoScaling:HealthStatus",
        @"launchConfigurationName": @"AutoScaling:LaunchConfigurationName"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)lifecycleStateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASInstanceLifecycleStatePending), @(UAASInstanceLifecycleStatePendingWait), @(UAASInstanceLifecycleStatePendingProceed), @(UAASInstanceLifecycleStateQuarantined), @(UAASInstanceLifecycleStateInService), @(UAASInstanceLifecycleStateTerminating), @(UAASInstanceLifecycleStateTerminatingWait), @(UAASInstanceLifecycleStateTerminatingProceed), @(UAASInstanceLifecycleStateTerminated), @(UAASInstanceLifecycleStateDetaching), @(UAASInstanceLifecycleStateDetached), @(UAASInstanceLifecycleStateEnteringStandby), @(UAASInstanceLifecycleStateStandby) ]
                                               stringValues:@[ @"Pending", @"Pending:Wait", @"Pending:Proceed", @"Quarantined", @"InService", @"Terminating", @"Terminating:Wait", @"Terminating:Proceed", @"Terminated", @"Detaching", @"Detached", @"EnteringStandby", @"Standby" ]
                                               unknownValue:@(UAASInstanceLifecycleStateUnknown)];
}

+ (NSValueTransformer *)lifecycleStateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASInstanceLifecycleStatePending), @(UAASInstanceLifecycleStatePendingWait), @(UAASInstanceLifecycleStatePendingProceed), @(UAASInstanceLifecycleStateQuarantined), @(UAASInstanceLifecycleStateInService), @(UAASInstanceLifecycleStateTerminating), @(UAASInstanceLifecycleStateTerminatingWait), @(UAASInstanceLifecycleStateTerminatingProceed), @(UAASInstanceLifecycleStateTerminated), @(UAASInstanceLifecycleStateDetaching), @(UAASInstanceLifecycleStateDetached), @(UAASInstanceLifecycleStateEnteringStandby), @(UAASInstanceLifecycleStateStandby) ]
                                               stringValues:@[ @"Pending", @"Pending:Wait", @"Pending:Proceed", @"Quarantined", @"InService", @"Terminating", @"Terminating:Wait", @"Terminating:Proceed", @"Terminated", @"Detaching", @"Detached", @"EnteringStandby", @"Standby" ]
                                               unknownValue:@(UAASInstanceLifecycleStateUnknown)];
}

@end

#pragma clang diagnostic pop