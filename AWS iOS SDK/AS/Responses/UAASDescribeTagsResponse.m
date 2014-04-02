//
//  UAASDescribeTagsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeTagsResponse.h"
#import "UAASTag.h"

@implementation UAASDescribeTagsResponse

@synthesize tags=_tags, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeTagsResponse/AutoScaling:DescribeTagsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"tags": @"AutoScaling:Tags/AutoScaling:member",
        @"nextToken": @"AutoScaling:NextToken"
    }];
    return [keyPaths copy];
}

- (UAASTag *)tagAtIndex:(NSUInteger)index
{
    if (self.tags == nil || index >= ([self.tags count]-1))
        return nil;

    return [self.tags objectAtIndex:index];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASTag class]];
}

@end
