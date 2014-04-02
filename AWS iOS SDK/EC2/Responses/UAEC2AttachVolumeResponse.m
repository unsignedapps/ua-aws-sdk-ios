//
//  UAEC2AttachVolumeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AttachVolumeResponse.h"

@implementation UAEC2AttachVolumeResponse

@synthesize volumeID=_volumeID, instanceID=_instanceID, device=_device, state=_state, attachTime=_attachTime, deleteOnTermination=_deleteOnTermination;

+ (NSString *)XPathPrefix
{
    return @"./ec2:AttachVolumeResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"volumeID": @"ec2:volumeId",
        @"instanceID": @"ec2:instanceId",
        @"device": @"ec2:device",
        @"state": @"ec2:status",
        @"attachTime": @"ec2:attachTime",
        @"deleteOnTermination": @"ec2:deleteOnTermination"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2AttachmentStateAttaching), @(UAEC2AttachmentStateAttached), @(UAEC2AttachmentStateDetaching), @(UAEC2AttachmentStateDetached) ]
                                               stringValues:@[ @"attaching", @"attached", @"detaching", @"detached" ]
                                               unknownValue:@(UAEC2AttachmentStateUnknown)];
}

+ (NSValueTransformer *)attachTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)deleteOnTerminationXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
