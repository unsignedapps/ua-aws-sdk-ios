//
//  UAASAutoScalingInstanceDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASAutoScalingInstanceDetails.h"

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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"Pending"])
		    return @(UAASInstanceLifecycleStatePending);
		if ([value isEqualToString:@"Quarantined"])
		    return @(UAASInstanceLifecycleStateQuarantined);
		if ([value isEqualToString:@"InService"])
		    return @(UAASInstanceLifecycleStateInService);
		if ([value isEqualToString:@"Terminating"])
		    return @(UAASInstanceLifecycleStateTerminating);
		if ([value isEqualToString:@"Terminated"])
		    return @(UAASInstanceLifecycleStateTerminated);

		return @(UAASInstanceLifecycleStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAASInstanceLifecycleState castValue = (UAASInstanceLifecycleState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAASInstanceLifecycleStatePending:
			    return @"Pending";
			case UAASInstanceLifecycleStateQuarantined:
			    return @"Quarantined";
			case UAASInstanceLifecycleStateInService:
			    return @"InService";
			case UAASInstanceLifecycleStateTerminating:
			    return @"Terminating";
			case UAASInstanceLifecycleStateTerminated:
			    return @"Terminated";

			case UAASInstanceLifecycleStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)lifecycleStateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAASInstanceLifecycleStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"Pending"])
		    return @(UAASInstanceLifecycleStatePending);
		if ([value isEqualToString:@"Quarantined"])
		    return @(UAASInstanceLifecycleStateQuarantined);
		if ([value isEqualToString:@"InService"])
		    return @(UAASInstanceLifecycleStateInService);
		if ([value isEqualToString:@"Terminating"])
		    return @(UAASInstanceLifecycleStateTerminating);
		if ([value isEqualToString:@"Terminated"])
		    return @(UAASInstanceLifecycleStateTerminated);

		return @(UAASInstanceLifecycleStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAASInstanceLifecycleState castValue = (UAASInstanceLifecycleState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAASInstanceLifecycleStatePending:
			    return @"Pending";
			case UAASInstanceLifecycleStateQuarantined:
			    return @"Quarantined";
			case UAASInstanceLifecycleStateInService:
			    return @"InService";
			case UAASInstanceLifecycleStateTerminating:
			    return @"Terminating";
			case UAASInstanceLifecycleStateTerminated:
			    return @"Terminated";

			case UAASInstanceLifecycleStateUnknown:
			default:
				return nil;
        }
    }];
}

@end
