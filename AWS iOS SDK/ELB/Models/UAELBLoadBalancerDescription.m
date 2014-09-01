//
//  UAELBLoadBalancerDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBLoadBalancerDescription.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBListenerDescription.h"
#import "UAELBPolicies.h"
#import "UAELBBackendServerDescription.h"
#import "UAELBInstance.h"
#import "UAELBHealthCheck.h"
#import "UAELBSourceSecurityGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBLoadBalancerDescription

@synthesize loadBalancerName=_loadBalancerName, dNSName=_dNSName, canonicalHostedZoneName=_canonicalHostedZoneName, canonicalHostedZoneNameID=_canonicalHostedZoneNameID, listenerDescriptions=_listenerDescriptions, policies=_policies, backendServerDescriptions=_backendServerDescriptions, availabilityZones=_availabilityZones, subnets=_subnets, vPCID=_vPCID, instances=_instances, healthCheck=_healthCheck, sourceSecurityGroup=_sourceSecurityGroup, securityGroups=_securityGroups, createdTime=_createdTime, scheme=_scheme;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(listenerDescriptionAtIndex:) propertyName:@"listenerDescriptions"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(backendServerDescriptionAtIndex:) propertyName:@"backendServerDescriptions"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(availabilityZoneAtIndex:) propertyName:@"availabilityZones"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(subnetAtIndex:) propertyName:@"subnets"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(instanceAtIndex:) propertyName:@"instances"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(securityGroupAtIndex:) propertyName:@"securityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addListenerDescription:) propertyName:@"listenerDescriptions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addBackendServerDescription:) propertyName:@"backendServerDescriptions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAvailabilityZone:) propertyName:@"availabilityZones"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSubnet:) propertyName:@"subnets"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addInstance:) propertyName:@"instances"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSecurityGroup:) propertyName:@"securityGroups"];
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
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBListenerDescription class]];
}

+ (NSValueTransformer *)policiesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAELBPolicies class]];
}

+ (NSValueTransformer *)backendServerDescriptionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBBackendServerDescription class]];
}

+ (NSValueTransformer *)instancesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBInstance class]];
}

+ (NSValueTransformer *)healthCheckQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAELBHealthCheck class]];
}

+ (NSValueTransformer *)sourceSecurityGroupQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAELBSourceSecurityGroup class]];
}

+ (NSValueTransformer *)createdTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)schemeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAELBSchemeInternetFacing), @(UAELBSchemeInternal) ]
                                               stringValues:@[ @"internet-facing", @"internal" ]
                                               unknownValue:@(UAELBSchemeUnknown)];
}

+ (NSValueTransformer *)listenerDescriptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBListenerDescription class]];
}

+ (NSValueTransformer *)policiesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAELBPolicies class]];
}

+ (NSValueTransformer *)backendServerDescriptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBBackendServerDescription class]];
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
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBInstance class]];
}

+ (NSValueTransformer *)healthCheckXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAELBHealthCheck class]];
}

+ (NSValueTransformer *)sourceSecurityGroupXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAELBSourceSecurityGroup class]];
}

+ (NSValueTransformer *)securityGroupsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)createdTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)schemeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAELBSchemeInternetFacing), @(UAELBSchemeInternal) ]
                                               stringValues:@[ @"internet-facing", @"internal" ]
                                               unknownValue:@(UAELBSchemeUnknown)];
}

@end

#pragma clang diagnostic pop