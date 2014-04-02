//
//  UAEC2TerminateInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2TerminateInstancesResponse.h"
#import "UAEC2InstanceStateChange.h"

@implementation UAEC2TerminateInstancesResponse

@synthesize terminatingInstances=_terminatingInstances;

+ (NSString *)XPathPrefix
{
    return @"./ec2:TerminateInstancesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"terminatingInstances": @"ec2:instancesSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2InstanceStateChange *)terminatingInstanceAtIndex:(NSUInteger)index
{
    if (self.terminatingInstances == nil || index >= ([self.terminatingInstances count]-1))
        return nil;

    return [self.terminatingInstances objectAtIndex:index];
}

+ (NSValueTransformer *)terminatingInstancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceStateChange class]];
}

@end
