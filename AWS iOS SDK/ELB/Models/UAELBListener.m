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

- (void)setProtocol:(NSString *)protocol
{
	_protocol = protocol;
	
	if (![self.UA_dirtyProperties containsObject:@"protocol"])
		[self.UA_dirtyProperties addObject:@"protocol"];
}

- (void)setLoadBalancerPort:(NSNumber *)loadBalancerPort
{
	_loadBalancerPort = loadBalancerPort;
	
	if (![self.UA_dirtyProperties containsObject:@"loadBalancerPort"])
		[self.UA_dirtyProperties addObject:@"loadBalancerPort"];
}

- (void)setInstanceProtocol:(NSString *)instanceProtocol
{
	_instanceProtocol = instanceProtocol;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceProtocol"])
		[self.UA_dirtyProperties addObject:@"instanceProtocol"];
}

- (void)setInstancePort:(NSNumber *)instancePort
{
	_instancePort = instancePort;
	
	if (![self.UA_dirtyProperties containsObject:@"instancePort"])
		[self.UA_dirtyProperties addObject:@"instancePort"];
}

- (void)setSSLCertificateID:(NSString *)sSLCertificateID
{
	_sSLCertificateID = sSLCertificateID;
	
	if (![self.UA_dirtyProperties containsObject:@"sSLCertificateID"])
		[self.UA_dirtyProperties addObject:@"sSLCertificateID"];
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
