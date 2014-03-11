//
//  UASNSListTopicsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSListTopicsResponse.h"
#import "UASNSTopic.h"

@implementation UASNSListTopicsResponse

@synthesize topics=_topics, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./Sns:ListTopicsResponse/Sns:ListTopicsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"topics": @"Sns:Topics/Sns:member",
        @"nextToken": @"Sns:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)topicsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASNSTopic class]];
}

@end
