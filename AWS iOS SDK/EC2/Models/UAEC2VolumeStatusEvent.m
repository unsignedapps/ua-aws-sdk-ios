//
//  UAEC2VolumeStatusEvent.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VolumeStatusEvent.h"

@implementation UAEC2VolumeStatusEvent

@synthesize eventType=_eventType, descriptionValue=_descriptionValue, notBefore=_notBefore, notAfter=_notAfter, eventID=_eventID;

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
        @"eventType": @"ec2:eventType",
        @"descriptionValue": @"ec2:description",
        @"notBefore": @"ec2:notBefore",
        @"notAfter": @"ec2:notAfter",
        @"eventID": @"ec2:eventId"
    }];
    return [keyPaths copy];
}

@end
