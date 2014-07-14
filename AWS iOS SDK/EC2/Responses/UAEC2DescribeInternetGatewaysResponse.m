//
//  UAEC2DescribeInternetGatewaysResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeInternetGatewaysResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2InternetGateway.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeInternetGatewaysResponse

@synthesize internetGateways=_internetGateways;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(internetGatewayAtIndex:) propertyName:@"internetGateways"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeInternetGatewaysResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"internetGateways": @"ec2:internetGatewaySet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)internetGatewaysXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InternetGateway class]];
}

@end

#pragma clang diagnostic pop