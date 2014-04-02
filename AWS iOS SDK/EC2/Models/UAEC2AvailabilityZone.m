//
//  UAEC2AvailabilityZone.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (UAEC2AvailabilityZoneMessage *)messageAtIndex:(NSUInteger)index
{
    if (self.messages == nil || index >= ([self.messages count]-1))
        return nil;

    return [self.messages objectAtIndex:index];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2AvailabilityZoneStateAvailable), @(UAEC2AvailabilityZoneStateImpaired), @(UAEC2AvailabilityZoneStateUnavailable) ]
                                               stringValues:@[ @"available", @"impaired", @"unavailable" ]
                                               unknownValue:@(UAEC2AvailabilityZoneStateUnknown)];
}

+ (NSValueTransformer *)messagesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2AvailabilityZoneMessage class]];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2AvailabilityZoneStateAvailable), @(UAEC2AvailabilityZoneStateImpaired), @(UAEC2AvailabilityZoneStateUnavailable) ]
                                               stringValues:@[ @"available", @"impaired", @"unavailable" ]
                                               unknownValue:@(UAEC2AvailabilityZoneStateUnknown)];
}

+ (NSValueTransformer *)messagesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2AvailabilityZoneMessage class]];
}

@end
