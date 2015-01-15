//
//  UAEC2DescribeCustomerGatewaysResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeCustomerGatewaysResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2CustomerGateway.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeCustomerGatewaysResponse

@synthesize customerGateways=_customerGateways;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(customerGatewayAtIndex:) propertyName:@"customerGateways"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addCustomerGateway:) propertyName:@"customerGateways"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeCustomerGatewaysResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"customerGateways": @"ec2:customerGatewaySet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)customerGatewaysXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2CustomerGateway class]];
}

@end

#pragma clang diagnostic pop