//
//  UACWListMetricsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWListMetricsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UACWMetric.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWListMetricsResponse

@synthesize metrics=_metrics, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(metricAtIndex:) propertyName:@"metrics"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addMetric:) propertyName:@"metrics"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:ListMetricsResponse/cloudwatch:ListMetricsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"metrics": @"cloudwatch:Metrics/cloudwatch:member",
        @"nextToken": @"cloudwatch:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)metricsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UACWMetric class]];
}

@end

#pragma clang diagnostic pop