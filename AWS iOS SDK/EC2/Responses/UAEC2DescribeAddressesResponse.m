//
//  UAEC2DescribeAddressesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeAddressesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Address.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeAddressesResponse

@synthesize addresses=_addresses;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(addressAtIndex:) propertyName:@"addresses"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAddress:) propertyName:@"addresses"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeAddressesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"addresses": @"ec2:addressesSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)addressesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Address class]];
}

@end

#pragma clang diagnostic pop