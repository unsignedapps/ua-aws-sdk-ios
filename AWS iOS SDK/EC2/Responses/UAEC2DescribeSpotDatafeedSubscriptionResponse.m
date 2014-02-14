//
//  UAEC2DescribeSpotDatafeedSubscriptionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSpotDatafeedSubscriptionResponse.h"
#import "UAEC2SpotDatafeedSubscription.h"

@implementation UAEC2DescribeSpotDatafeedSubscriptionResponse

@synthesize spotDatafeedSubscription=_spotDatafeedSubscription;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeSpotDatafeedSubscriptionResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"spotDatafeedSubscription": @"ec2:spotDatafeedSubscription"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)spotDatafeedSubscriptionXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2SpotDatafeedSubscription class]];
}

@end
