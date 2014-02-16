//
//  UASNSPlatformApplicationAttributes.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSPlatformApplicationAttributes.h"

@implementation UASNSPlatformApplicationAttributes

@synthesize eventEndpointCreated=_eventEndpointCreated, eventEndpointDeleted=_eventEndpointDeleted, eventEndpointUpdated=_eventEndpointUpdated, eventDeliveryFailure=_eventDeliveryFailure;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"eventEndpointCreated": @"Sns:entry/Sns:value[../Sns:key/text() = \"EventEndpointCreated\"]",
        @"eventEndpointDeleted": @"Sns:entry/Sns:value[../Sns:key/text() = \"EventEndpointDeleted\"]",
        @"eventEndpointUpdated": @"Sns:entry/Sns:value[../Sns:key/text() = \"EventEndpointUpdated\"]",
        @"eventDeliveryFailure": @"Sns:entry/Sns:value[../Sns:key/text() = \"EventDeliveryFailure\"]"
    }];
    return [keyPaths copy];
}

@end
