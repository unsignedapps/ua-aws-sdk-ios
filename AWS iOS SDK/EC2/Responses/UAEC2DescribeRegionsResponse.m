//
//  UAEC2DescribeRegionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeRegionsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Region.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeRegionsResponse

@synthesize regions=_regions;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(regionAtIndex:) propertyName:@"regions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addRegion:) propertyName:@"regions"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeRegionsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"regions": @"ec2:regionInfo/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)regionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Region class]];
}

@end

#pragma clang diagnostic pop