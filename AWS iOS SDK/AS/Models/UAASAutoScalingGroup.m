//
//  UAASAutoScalingGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASAutoScalingGroup.h"
#import "UAASInstance.h"
#import "UAASSuspendedProcess.h"
#import "UAASEnabledMetric.h"
#import "UAASTag.h"

@implementation UAASAutoScalingGroup

@synthesize autoScalingGroupName=_autoScalingGroupName, autoScalingGroupARN=_autoScalingGroupARN, launchConfigurationName=_launchConfigurationName, minSize=_minSize, maxSize=_maxSize, desiredCapacity=_desiredCapacity, defaultCooldown=_defaultCooldown, availabilityZones=_availabilityZones, loadBalancerNames=_loadBalancerNames, healthCheckType=_healthCheckType, healthCheckGracePeriod=_healthCheckGracePeriod, instances=_instances, createdTime=_createdTime, suspendedProcesses=_suspendedProcesses, placementGroup=_placementGroup, vPCZoneIdentifier=_vPCZoneIdentifier, enabledMetrics=_enabledMetrics, status=_status, tags=_tags, terminationPolicies=_terminationPolicies;

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
        @"autoScalingGroupName": @"AutoScaling:AutoScalingGroupName",
        @"autoScalingGroupARN": @"AutoScaling:AutoScalingGroupARN",
        @"launchConfigurationName": @"AutoScaling:LaunchConfigurationName",
        @"minSize": @"AutoScaling:MinSize",
        @"maxSize": @"AutoScaling:MaxSize",
        @"desiredCapacity": @"AutoScaling:DesiredCapacity",
        @"defaultCooldown": @"AutoScaling:DefaultCooldown",
        @"availabilityZones": @"AutoScaling:AvailabilityZones/AutoScaling:member",
        @"loadBalancerNames": @"AutoScaling:LoadBalancerNames/AutoScaling:member",
        @"healthCheckType": @"AutoScaling:HealthCheckType",
        @"healthCheckGracePeriod": @"AutoScaling:HealthCheckGracePeriod",
        @"instances": @"AutoScaling:Instances/AutoScaling:member",
        @"createdTime": @"AutoScaling:CreatedTime",
        @"suspendedProcesses": @"AutoScaling:SuspendedProcesses/AutoScaling:member",
        @"placementGroup": @"AutoScaling:PlacementGroup",
        @"vPCZoneIdentifier": @"AutoScaling:VPCZoneIdentifier",
        @"enabledMetrics": @"AutoScaling:EnabledMetrics/AutoScaling:member",
        @"status": @"AutoScaling:Status",
        @"tags": @"AutoScaling:Tags/AutoScaling:member",
        @"terminationPolicies": @"AutoScaling:TerminationPolicies/AutoScaling:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)healthCheckTypeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"EC2"])
		    return @(UAASHealthCheckTypeEC2);
		if ([value isEqualToString:@"ELB"])
		    return @(UAASHealthCheckTypeELB);

		return @(UAASHealthCheckTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAASHealthCheckType castValue = (UAASHealthCheckType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAASHealthCheckTypeEC2:
			    return @"EC2";
			case UAASHealthCheckTypeELB:
			    return @"ELB";

			case UAASHealthCheckTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)instancesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAASInstance class]];
}

+ (NSValueTransformer *)createdTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)suspendedProcessesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAASSuspendedProcess class]];
}

+ (NSValueTransformer *)enabledMetricsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAASEnabledMetric class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAASTag class]];
}

+ (NSValueTransformer *)minSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)maxSizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)desiredCapacityXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)defaultCooldownXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)availabilityZonesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)loadBalancerNamesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)healthCheckTypeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAASHealthCheckTypeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"EC2"])
		    return @(UAASHealthCheckTypeEC2);
		if ([value isEqualToString:@"ELB"])
		    return @(UAASHealthCheckTypeELB);

		return @(UAASHealthCheckTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAASHealthCheckType castValue = (UAASHealthCheckType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAASHealthCheckTypeEC2:
			    return @"EC2";
			case UAASHealthCheckTypeELB:
			    return @"ELB";

			case UAASHealthCheckTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)healthCheckGracePeriodXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)instancesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASInstance class]];
}

+ (NSValueTransformer *)createdTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)suspendedProcessesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASSuspendedProcess class]];
}

+ (NSValueTransformer *)enabledMetricsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASEnabledMetric class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASTag class]];
}

+ (NSValueTransformer *)terminationPoliciesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
