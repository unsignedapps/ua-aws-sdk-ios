//
//  UAEC2AvailabilityZone.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AvailabilityZone.h"
#import "UAEC2AvailabilityZoneMessage.h"

@implementation UAEC2AvailabilityZone

@synthesize zoneName=_zoneName, state=_state, regionName=_regionName, messages=_messages;

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
        @"zoneName": @"ec2:zoneName",
        @"state": @"ec2:zoneState",
        @"regionName": @"ec2:regionName",
        @"messages": @"ec2:messageSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)messagesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2AvailabilityZoneMessage class]];
}

+ (NSValueTransformer *)messagesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2AvailabilityZoneMessage class]];
}

@end
