//
//  UAEC2UnmonitorInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2UnmonitorInstancesResponse.h"
#import "UAEC2InstanceMonitoring.h"

@implementation UAEC2UnmonitorInstancesResponse

@synthesize instanceMonitorings=_instanceMonitorings;

+ (NSString *)XPathPrefix
{
    return @"./ec2:UnmonitorInstancesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceMonitorings": @"ec2:instancesSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2InstanceMonitoring *)instanceMonitoringAtIndex:(NSUInteger)index
{
    if (self.instanceMonitorings == nil || index >= ([self.instanceMonitorings count]-1))
        return nil;

    return [self.instanceMonitorings objectAtIndex:index];
}

+ (NSValueTransformer *)instanceMonitoringsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceMonitoring class]];
}

@end
