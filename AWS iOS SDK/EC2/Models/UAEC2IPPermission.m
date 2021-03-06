//
//  UAEC2IPPermission.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2IPPermission.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2UserIdGroupPair.h"
#import "UAEC2IPRange.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2IPPermission

@synthesize ipProtocol=_ipProtocol, fromPort=_fromPort, toPort=_toPort, userIdGroupPairs=_userIdGroupPairs, ipRanges=_ipRanges;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(userIdGroupPairAtIndex:) propertyName:@"userIdGroupPairs"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(ipRangeAtIndex:) propertyName:@"ipRanges"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addUserIdGroupPair:) propertyName:@"userIdGroupPairs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addIPRange:) propertyName:@"ipRanges"];
	}
	return self;
}

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

#pragma clang diagnostic pop