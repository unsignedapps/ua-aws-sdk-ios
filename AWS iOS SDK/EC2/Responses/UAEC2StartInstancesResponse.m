//
//  UAEC2StartInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2StartInstancesResponse.h"
#import "UAEC2InstanceStateChange.h"

@implementation UAEC2StartInstancesResponse

@synthesize startingInstances=_startingInstances;

+ (NSString *)XPathPrefix
{
    return @"./ec2:StartInstancesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"startingInstances": @"ec2:instancesSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2InstanceStateChange *)startingInstanceAtIndex:(NSUInteger)index
{
    if (self.startingInstances == nil || index >= ([self.startingInstances count]-1))
        return nil;

    return [self.startingInstances objectAtIndex:index];
}

+ (NSValueTransformer *)startingInstancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceStateChange class]];
}

@end
