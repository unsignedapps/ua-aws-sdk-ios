//
//  UAEC2AvailabilityZone.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AvailabilityZone.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2AvailabilityZoneMessage.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2AvailabilityZone

@synthesize zoneName=_zoneName, state=_state, regionName=_regionName, messages=_messages;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(messageAtIndex:) propertyName:@"messages"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addMessage:) propertyName:@"messages"];
	}
	return self;
}

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

#pragma clang diagnostic pop