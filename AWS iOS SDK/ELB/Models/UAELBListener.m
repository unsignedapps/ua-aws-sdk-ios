//
//  UAELBListener.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBListener.h"

@implementation UAELBListener

@synthesize protocol=_protocol, loadBalancerPort=_loadBalancerPort, instanceProtocol=_instanceProtocol, instancePort=_instancePort, sSLCertificateID=_sSLCertificateID;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"protocol": @"Protocol",
        @"loadBalancerPort": @"LoadBalancerPort",
        @"instanceProtocol": @"InstanceProtocol",
        @"instancePort": @"InstancePort",
        @"sSLCertificateID": @"SSLCertificateId"
    }];
    return [keyPaths copy];
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
        @"protocol": @"ElasticLoadBalancing:Protocol",
        @"loadBalancerPort": @"ElasticLoadBalancing:LoadBalancerPort",
        @"instanceProtocol": @"ElasticLoadBalancing:InstanceProtocol",
        @"instancePort": @"ElasticLoadBalancing:InstancePort",
        @"sSLCertificateID": @"ElasticLoadBalancing:SSLCertificateId"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)loadBalancerPortXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)instancePortXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
