//
//  UAEC2DescribeSpotPriceHistoryResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSpotPriceHistoryResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2SpotPriceHistory.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeSpotPriceHistoryResponse

@synthesize spotPriceHistory=_spotPriceHistory, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(spotPriceHistoryAtIndex:) propertyName:@"spotPriceHistory"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSpotPriceHistory:) propertyName:@"spotPriceHistory"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeSpotPriceHistoryResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"spotPriceHistory": @"ec2:spotPriceHistorySet/ec2:item",
        @"nextToken": @"ec2:nextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)spotPriceHistoryXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2SpotPriceHistory class]];
}

@end

#pragma clang diagnostic pop