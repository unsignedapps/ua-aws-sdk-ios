//
//  UAEC2DescribeKeyPairsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeKeyPairsResponse.h"
#import "UAEC2KeyPair.h"

@implementation UAEC2DescribeKeyPairsResponse

@synthesize keyPairs=_keyPairs;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeKeyPairsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"keyPairs": @"ec2:keySet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)keyPairsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2KeyPair class]];
}

@end
