//
//  UAEC2DescribeSecurityGroupsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSecurityGroupsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2SecurityGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeSecurityGroupsResponse

@synthesize securityGroups=_securityGroups;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(securityGroupAtIndex:) propertyName:@"securityGroups"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeSecurityGroupsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"securityGroups": @"ec2:securityGroupInfo/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)securityGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2SecurityGroup class]];
}

@end

#pragma clang diagnostic pop