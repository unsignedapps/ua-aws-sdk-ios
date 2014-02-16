//
//  UAEC2VolumeStatusAction.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VolumeStatusAction.h"

@implementation UAEC2VolumeStatusAction

@synthesize code=_code, descriptionValue=_descriptionValue, eventType=_eventType, eventID=_eventID;

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
        @"code": @"ec2:code",
        @"descriptionValue": @"ec2:description",
        @"eventType": @"ec2:eventType",
        @"eventID": @"ec2:eventId"
    }];
    return [keyPaths copy];
}

@end
