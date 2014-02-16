//
//  UAEC2CreateSpotDatafeedSubscriptionResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateSpotDatafeedSubscriptionResponse.h"
#import "UAEC2SpotDatafeedSubscription.h"

@implementation UAEC2CreateSpotDatafeedSubscriptionResponse

@synthesize spotDatafeedSubscription=_spotDatafeedSubscription;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateSpotDatafeedSubscriptionResponse/";
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
