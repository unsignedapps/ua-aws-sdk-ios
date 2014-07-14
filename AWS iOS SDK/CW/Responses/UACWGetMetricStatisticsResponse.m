//
//  UACWGetMetricStatisticsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWGetMetricStatisticsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UACWDatapoint.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWGetMetricStatisticsResponse

@synthesize label=_label, datapoints=_datapoints;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(datapointAtIndex:) propertyName:@"datapoints"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:GetMetricStatisticsResponse/cloudwatch:GetMetricStatisticsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"label": @"cloudwatch:Label",
        @"datapoints": @"cloudwatch:Datapoints/cloudwatch:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)datapointsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UACWDatapoint class]];
}

@end

#pragma clang diagnostic pop