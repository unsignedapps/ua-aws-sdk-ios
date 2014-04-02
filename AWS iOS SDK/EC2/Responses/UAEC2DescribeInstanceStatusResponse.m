//
//  UAEC2DescribeInstanceStatusResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeInstanceStatusResponse.h"
#import "UAEC2InstanceStatus.h"

@implementation UAEC2DescribeInstanceStatusResponse

@synthesize instanceStatuses=_instanceStatuses, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeInstanceStatusResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceStatuses": @"ec2:instanceStatusSet/ec2:item",
        @"nextToken": @"ec2:nextToken"
    }];
    return [keyPaths copy];
}

- (UAEC2InstanceStatus *)instanceStatusAtIndex:(NSUInteger)index
{
    if (self.instanceStatuses == nil || index >= ([self.instanceStatuses count]-1))
        return nil;

    return [self.instanceStatuses objectAtIndex:index];
}

+ (NSValueTransformer *)instanceStatusesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceStatus class]];
}

@end
