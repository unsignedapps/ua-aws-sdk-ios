//
//  UAEC2DescribeRouteTablesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeRouteTablesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2RouteTable.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeRouteTablesResponse

@synthesize routeTables=_routeTables;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(routeTableAtIndex:) propertyName:@"routeTables"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addRouteTable:) propertyName:@"routeTables"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeRouteTablesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"routeTables": @"ec2:routeTableSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)routeTablesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2RouteTable class]];
}

@end

#pragma clang diagnostic pop