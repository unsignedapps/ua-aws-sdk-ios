//
//  UAEC2TargetConfiguration.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2TargetConfiguration.h"

@implementation UAEC2TargetConfiguration

@synthesize availabilityZone=_availabilityZone, platform=_platform, instanceCount=_instanceCount, instanceType=_instanceType;

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
        @"availabilityZone": @"ec2:availabilityZone",
        @"platform": @"ec2:platform",
        @"instanceCount": @"ec2:instanceCount",
        @"instanceType": @"ec2:instanceType"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)instanceCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
