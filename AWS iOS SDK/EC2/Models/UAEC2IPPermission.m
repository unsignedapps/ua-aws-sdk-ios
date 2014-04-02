//
//  UAEC2IPPermission.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2IPPermission.h"
#import "UAEC2UserIdGroupPair.h"
#import "UAEC2IPRange.h"

@implementation UAEC2IPPermission

@synthesize ipProtocol=_ipProtocol, fromPort=_fromPort, toPort=_toPort, userIdGroupPairs=_userIdGroupPairs, ipRanges=_ipRanges;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"ipProtocol": @"IpProtocol",
        @"fromPort": @"FromPort",
        @"toPort": @"ToPort",
        @"userIdGroupPairs": @"Groups",
        @"ipRanges": @"IpRanges"
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
        @"ipProtocol": @"ec2:ipProtocol",
        @"fromPort": @"ec2:fromPort",
        @"toPort": @"ec2:toPort",
        @"userIdGroupPairs": @"ec2:groups/ec2:item",
        @"ipRanges": @"ec2:ipRanges/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2UserIdGroupPair *)userIdGroupPairAtIndex:(NSUInteger)index
{
    if (self.userIdGroupPairs == nil || index >= ([self.userIdGroupPairs count]-1))
        return nil;

    return [self.userIdGroupPairs objectAtIndex:index];
}

- (UAEC2IPRange *)ipRangeAtIndex:(NSUInteger)index
{
    if (self.ipRanges == nil || index >= ([self.ipRanges count]-1))
        return nil;

    return [self.ipRanges objectAtIndex:index];
}

- (void)setIpProtocol:(NSString *)ipProtocol
{
	_ipProtocol = ipProtocol;
	
	if (![self.UA_dirtyProperties containsObject:@"ipProtocol"])
		[self.UA_dirtyProperties addObject:@"ipProtocol"];
}

- (void)setFromPort:(NSNumber *)fromPort
{
	_fromPort = fromPort;
	
	if (![self.UA_dirtyProperties containsObject:@"fromPort"])
		[self.UA_dirtyProperties addObject:@"fromPort"];
}

- (void)setToPort:(NSNumber *)toPort
{
	_toPort = toPort;
	
	if (![self.UA_dirtyProperties containsObject:@"toPort"])
		[self.UA_dirtyProperties addObject:@"toPort"];
}

- (void)setUserIdGroupPairs:(NSMutableArray *)userIdGroupPairs
{
	_userIdGroupPairs = userIdGroupPairs;
	
	if (![self.UA_dirtyProperties containsObject:@"userIdGroupPairs"])
		[self.UA_dirtyProperties addObject:@"userIdGroupPairs"];
}

- (void)setIpRanges:(NSMutableArray *)ipRanges
{
	_ipRanges = ipRanges;
	
	if (![self.UA_dirtyProperties containsObject:@"ipRanges"])
		[self.UA_dirtyProperties addObject:@"ipRanges"];
}

+ (NSValueTransformer *)userIdGroupPairsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2UserIdGroupPair class]];
}

+ (NSValueTransformer *)ipRangesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2IPRange class]];
}

+ (NSValueTransformer *)fromPortXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)toPortXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)userIdGroupPairsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2UserIdGroupPair class]];
}

+ (NSValueTransformer *)ipRangesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2IPRange class]];
}

@end
