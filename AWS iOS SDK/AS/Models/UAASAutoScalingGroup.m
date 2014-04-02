//
//  UAASAutoScalingGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (NSString *)availabilityZoneAtIndex:(NSUInteger)index
{
    if (self.availabilityZones == nil || index >= ([self.availabilityZones count]-1))
        return nil;

    return [self.availabilityZones objectAtIndex:index];
}

- (NSString *)loadBalancerNameAtIndex:(NSUInteger)index
{
    if (self.loadBalancerNames == nil || index >= ([self.loadBalancerNames count]-1))
        return nil;

    return [self.loadBalancerNames objectAtIndex:index];
}

- (UAASInstance *)instanceAtIndex:(NSUInteger)index
{
    if (self.instances == nil || index >= ([self.instances count]-1))
        return nil;

    return [self.instances objectAtIndex:index];
}

- (UAASSuspendedProcess *)suspendedProcessAtIndex:(NSUInteger)index
{
    if (self.suspendedProcesses == nil || index >= ([self.suspendedProcesses count]-1))
        return nil;

    return [self.suspendedProcesses objectAtIndex:index];
}

- (UAASEnabledMetric *)enabledMetricAtIndex:(NSUInteger)index
{
    if (self.enabledMetrics == nil || index >= ([self.enabledMetrics count]-1))
        return nil;

    return [self.enabledMetrics objectAtIndex:index];
}

- (UAASTag *)tagAtIndex:(NSUInteger)index
{
    if (self.tags == nil || index >= ([self.tags count]-1))
        return nil;

    return [self.tags objectAtIndex:index];
}

- (NSString *)terminationPolicyAtIndex:(NSUInteger)index
{
    if (self.terminationPolicies == nil || index >= ([self.terminationPolicies count]-1))
        return nil;

    return [self.terminationPolicies objectAtIndex:index];
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
