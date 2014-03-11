//
//  UAEC2PrivateIPAddressSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PrivateIPAddressSpecification.h"

@implementation UAEC2PrivateIPAddressSpecification

@synthesize privateIPAddress=_privateIPAddress, primary=_primary;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"privateIPAddress": @"PrivateIpAddress",
        @"primary": @"Primary"
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
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"privateIPAddress": @"ec2:privateIpAddress",
        @"primary": @"ec2:primary"
    }];
    return [keyPaths copy];
}

- (void)setPrivateIPAddress:(NSString *)privateIPAddress
{
	_privateIPAddress = privateIPAddress;
	
	if (![self.UA_dirtyProperties containsObject:@"privateIPAddress"])
		[self.UA_dirtyProperties addObject:@"privateIPAddress"];
}

- (void)setPrimary:(BOOL)primary
{
	_primary = primary;
	
	if (![self.UA_dirtyProperties containsObject:@"primary"])
		[self.UA_dirtyProperties addObject:@"primary"];
}

+ (NSValueTransformer *)primaryXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
