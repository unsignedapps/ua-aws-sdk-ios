//
//  UAEC2SpotDatafeedSubscription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2SpotDatafeedSubscription.h"
#import "UAEC2Fault.h"

@implementation UAEC2SpotDatafeedSubscription

@synthesize ownerID=_ownerID, bucket=_bucket, prefix=_prefix, state=_state, fault=_fault;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"ownerID": @"ec2:ownerId",
        @"bucket": @"ec2:bucket",
        @"prefix": @"ec2:prefix",
        @"state": @"ec2:state",
        @"fault": @"ec2:fault"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)faultQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2Fault class]];
}

+ (NSValueTransformer *)faultXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2Fault class]];
}

@end
