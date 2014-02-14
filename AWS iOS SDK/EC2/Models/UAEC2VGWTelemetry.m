//
//  UAEC2VGWTelemetry.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VGWTelemetry.h"

@implementation UAEC2VGWTelemetry

@synthesize outsideIPAddress=_outsideIPAddress, status=_status, lastStatusChange=_lastStatusChange, statusMessage=_statusMessage, acceptedRouteCount=_acceptedRouteCount;

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
        @"outsideIPAddress": @"ec2:outsideIpAddress",
        @"status": @"ec2:status",
        @"lastStatusChange": @"ec2:lastStatusChange",
        @"statusMessage": @"ec2:statusMessage",
        @"acceptedRouteCount": @"ec2:acceptedRouteCount"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)acceptedRouteCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
