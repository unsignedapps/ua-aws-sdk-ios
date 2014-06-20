//
//  UAEC2VolumeStatus.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VolumeStatus.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2VolumeStatusInfo.h"
#import "UAEC2VolumeStatusEvent.h"
#import "UAEC2VolumeStatusAction.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2VolumeStatus

@synthesize volumeID=_volumeID, availabilityZone=_availabilityZone, volumeStatus=_volumeStatus, events=_events, actions=_actions;

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
        @"volumeID": @"ec2:volumeId",
        @"availabilityZone": @"ec2:availabilityZone",
        @"volumeStatus": @"ec2:volumeStatus",
        @"events": @"ec2:eventsSet/ec2:item",
        @"actions": @"ec2:actionsSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)volumeStatusQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2VolumeStatusInfo class]];
}

+ (NSValueTransformer *)eventsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2VolumeStatusEvent class]];
}

+ (NSValueTransformer *)actionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2VolumeStatusAction class]];
}

+ (NSValueTransformer *)volumeStatusXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2VolumeStatusInfo class]];
}

+ (NSValueTransformer *)eventsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VolumeStatusEvent class]];
}

+ (NSValueTransformer *)actionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VolumeStatusAction class]];
}

@end

#pragma clang diagnostic pop