//
//  UAEC2StopInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2StopInstancesResponse.h"
#import "UAEC2InstanceStateChange.h"

@implementation UAEC2StopInstancesResponse

@synthesize stoppingInstances=_stoppingInstances;

+ (NSString *)XPathPrefix
{
    return @"./ec2:StopInstancesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"stoppingInstances": @"ec2:instancesSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stoppingInstancesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2InstanceStateChange class]];
}

@end
