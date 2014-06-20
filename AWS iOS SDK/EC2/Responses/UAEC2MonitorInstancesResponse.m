//
//  UAEC2MonitorInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2MonitorInstancesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2InstanceMonitoring.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2MonitorInstancesResponse

@synthesize instanceMonitorings=_instanceMonitorings;

+ (NSString *)XPathPrefix
{
    return @"./ec2:MonitorInstancesResponse/";
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

+ (NSValueTransformer *)instanceMonitoringsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceMonitoring class]];
}

@end

#pragma clang diagnostic pop