//
//  UAEC2DescribeNetworkInterfacesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeNetworkInterfacesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2NetworkInterface.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeNetworkInterfacesResponse

@synthesize networkInterfaces=_networkInterfaces;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(networkInterfaceAtIndex:) propertyName:@"networkInterfaces"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addNetworkInterface:) propertyName:@"networkInterfaces"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeNetworkInterfacesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"networkInterfaces": @"ec2:networkInterfaceSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)networkInterfacesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2NetworkInterface class]];
}

@end

#pragma clang diagnostic pop