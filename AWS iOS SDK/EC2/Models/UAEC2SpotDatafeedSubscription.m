//
//  UAEC2SpotDatafeedSubscription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2SpotDatafeedSubscription.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Fault.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2Fault class]];
}

+ (NSValueTransformer *)faultXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2Fault class]];
}

@end

#pragma clang diagnostic pop