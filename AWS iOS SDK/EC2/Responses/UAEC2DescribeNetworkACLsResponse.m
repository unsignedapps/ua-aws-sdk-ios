//
//  UAEC2DescribeNetworkACLsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeNetworkACLsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2NetworkACL.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeNetworkACLsResponse

@synthesize networkACLs=_networkACLs;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(networkACLAtIndex:) propertyName:@"networkACLs"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeNetworkAclsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"networkACLs": @"ec2:networkAclSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)networkACLsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2NetworkACL class]];
}

@end

#pragma clang diagnostic pop