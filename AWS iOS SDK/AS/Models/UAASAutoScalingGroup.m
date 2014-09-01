//
//  UAASAutoScalingGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASAutoScalingGroup.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASInstance.h"
#import "UAASSuspendedProcess.h"
#import "UAASEnabledMetric.h"
#import "UAASTag.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASAutoScalingGroup

@synthesize autoScalingGroupName=_autoScalingGroupName, autoScalingGroupARN=_autoScalingGroupARN, launchConfigurationName=_launchConfigurationName, minSize=_minSize, maxSize=_maxSize, desiredCapacity=_desiredCapacity, defaultCooldown=_defaultCooldown, availabilityZones=_availabilityZones, loadBalancerNames=_loadBalancerNames, healthCheckType=_healthCheckType, healthCheckGracePeriod=_healthCheckGracePeriod, instances=_instances, createdTime=_createdTime, suspendedProcesses=_suspendedProcesses, placementGroup=_placementGroup, vPCZoneIdentifier=_vPCZoneIdentifier, enabledMetrics=_enabledMetrics, status=_status, tags=_tags, terminationPolicies=_terminationPolicies;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(availabilityZoneAtIndex:) propertyName:@"availabilityZones"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(loadBalancerNameAtIndex:) propertyName:@"loadBalancerNames"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(instanceAtIndex:) propertyName:@"instances"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(suspendedProcessAtIndex:) propertyName:@"suspendedProcesses"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(enabledMetricAtIndex:) propertyName:@"enabledMetrics"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(terminationPolicyAtIndex:) propertyName:@"terminationPolicies"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAvailabilityZone:) propertyName:@"availabilityZones"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addLoadBalancerName:) propertyName:@"loadBalancerNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addInstance:) propertyName:@"instances"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSuspendedProcess:) propertyName:@"suspendedProcesses"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addEnabledMetric:) propertyName:@"enabledMetrics"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTag:) propertyName:@"tags"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTerminationPolicy:) propertyName:@"terminationPolicies"];
	}
	return self;
}

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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASHealthCheckTypeEC2), @(UAASHealthCheckTypeElb) ]
                                               stringValues:@[ @"EC2", @"ELB" ]
                                               unknownValue:@(UAASHealthCheckTypeUnknown)];
}

+ (NSValueTransformer *)instancesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAASInstance class]];
}

+ (NSValueTransformer *)createdTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)suspendedProcessesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAASSuspendedProcess class]];
}

+ (NSValueTransformer *)enabledMetricsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAASEnabledMetric class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAASTag class]];
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASHealthCheckTypeEC2), @(UAASHealthCheckTypeElb) ]
                                               stringValues:@[ @"EC2", @"ELB" ]
                                               unknownValue:@(UAASHealthCheckTypeUnknown)];
}

+ (NSValueTransformer *)healthCheckGracePeriodXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)instancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASInstance class]];
}

+ (NSValueTransformer *)createdTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)suspendedProcessesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASSuspendedProcess class]];
}

+ (NSValueTransformer *)enabledMetricsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASEnabledMetric class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASTag class]];
}

+ (NSValueTransformer *)terminationPoliciesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop