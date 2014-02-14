//
//  UAELBLoadBalancerDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBLoadBalancerDescription.h"
#import "UAELBListenerDescription.h"
#import "UAELBPolicies.h"
#import "UAELBBackendServerDescription.h"
#import "UAELBInstance.h"
#import "UAELBHealthCheck.h"
#import "UAELBSourceSecurityGroup.h"

@implementation UAELBLoadBalancerDescription

@synthesize loadBalancerName=_loadBalancerName, dNSName=_dNSName, canonicalHostedZoneName=_canonicalHostedZoneName, canonicalHostedZoneNameID=_canonicalHostedZoneNameID, listenerDescriptions=_listenerDescriptions, policies=_policies, backendServerDescriptions=_backendServerDescriptions, availabilityZones=_availabilityZones, subnets=_subnets, vPCID=_vPCID, instances=_instances, healthCheck=_healthCheck, sourceSecurityGroup=_sourceSecurityGroup, securityGroups=_securityGroups, createdTime=_createdTime, scheme=_scheme;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"loadBalancerName": @"ElasticLoadBalancing:LoadBalancerName",
        @"dNSName": @"ElasticLoadBalancing:DNSName",
        @"canonicalHostedZoneName": @"ElasticLoadBalancing:CanonicalHostedZoneName",
        @"canonicalHostedZoneNameID": @"ElasticLoadBalancing:CanonicalHostedZoneNameID",
        @"listenerDescriptions": @"ElasticLoadBalancing:ListenerDescriptions/ElasticLoadBalancing:member",
        @"policies": @"ElasticLoadBalancing:Policies",
        @"backendServerDescriptions": @"ElasticLoadBalancing:BackendServerDescriptions/ElasticLoadBalancing:member",
        @"availabilityZones": @"ElasticLoadBalancing:AvailabilityZones/ElasticLoadBalancing:member",
        @"subnets": @"ElasticLoadBalancing:Subnets/ElasticLoadBalancing:member",
        @"vPCID": @"ElasticLoadBalancing:VPCId",
        @"instances": @"ElasticLoadBalancing:Instances/ElasticLoadBalancing:member",
        @"healthCheck": @"ElasticLoadBalancing:HealthCheck",
        @"sourceSecurityGroup": @"ElasticLoadBalancing:SourceSecurityGroup",
        @"securityGroups": @"ElasticLoadBalancing:SecurityGroups/ElasticLoadBalancing:member",
        @"createdTime": @"ElasticLoadBalancing:CreatedTime",
        @"scheme": @"ElasticLoadBalancing:Scheme"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)listenerDescriptionsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAELBListenerDescription class]];
}

+ (NSValueTransformer *)policiesQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAELBPolicies class]];
}

+ (NSValueTransformer *)backendServerDescriptionsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAELBBackendServerDescription class]];
}

+ (NSValueTransformer *)instancesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAELBInstance class]];
}

+ (NSValueTransformer *)healthCheckQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAELBHealthCheck class]];
}

+ (NSValueTransformer *)sourceSecurityGroupQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAELBSourceSecurityGroup class]];
}

+ (NSValueTransformer *)createdTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)schemeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"internet-facing"])
		    return @(UAELBSchemeInternetFacing);
		if ([value isEqualToString:@"internal"])
		    return @(UAELBSchemeInternal);

		return @(UAELBSchemeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAELBScheme castValue = (UAELBScheme)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAELBSchemeInternetFacing:
			    return @"internet-facing";
			case UAELBSchemeInternal:
			    return @"internal";

			case UAELBSchemeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)listenerDescriptionsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAELBListenerDescription class]];
}

+ (NSValueTransformer *)policiesXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAELBPolicies class]];
}

+ (NSValueTransformer *)backendServerDescriptionsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAELBBackendServerDescription class]];
}

+ (NSValueTransformer *)availabilityZonesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)subnetsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)instancesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAELBInstance class]];
}

+ (NSValueTransformer *)healthCheckXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAELBHealthCheck class]];
}

+ (NSValueTransformer *)sourceSecurityGroupXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAELBSourceSecurityGroup class]];
}

+ (NSValueTransformer *)securityGroupsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)createdTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)schemeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAELBSchemeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"internet-facing"])
		    return @(UAELBSchemeInternetFacing);
		if ([value isEqualToString:@"internal"])
		    return @(UAELBSchemeInternal);

		return @(UAELBSchemeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAELBScheme castValue = (UAELBScheme)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAELBSchemeInternetFacing:
			    return @"internet-facing";
			case UAELBSchemeInternal:
			    return @"internal";

			case UAELBSchemeUnknown:
			default:
				return nil;
        }
    }];
}

@end
