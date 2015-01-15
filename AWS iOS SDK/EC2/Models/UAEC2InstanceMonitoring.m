//
//  UAEC2InstanceMonitoring.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceMonitoring.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Monitoring.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2InstanceMonitoring

@synthesize instanceID=_instanceID, monitoring=_monitoring;

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
        @"instanceID": @"ec2:instanceId",
        @"monitoring": @"ec2:monitoring"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)monitoringQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2Monitoring class]];
}

+ (NSValueTransformer *)monitoringXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2Monitoring class]];
}

@end

#pragma clang diagnostic pop