//
//  UAEC2DescribeSubnetsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSubnetsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Subnet.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeSubnetsResponse

@synthesize subnets=_subnets;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(subnetAtIndex:) propertyName:@"subnets"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSubnet:) propertyName:@"subnets"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeSubnetsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"subnets": @"ec2:subnetSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)subnetsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Subnet class]];
}

@end

#pragma clang diagnostic pop