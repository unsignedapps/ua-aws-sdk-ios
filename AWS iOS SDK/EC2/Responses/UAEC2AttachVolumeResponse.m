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
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2AttachmentStateUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"attaching"])
		    return @(UAEC2AttachmentStateAttaching);
		if ([value isEqualToString:@"attached"])
		    return @(UAEC2AttachmentStateAttached);
		if ([value isEqualToString:@"detaching"])
		    return @(UAEC2AttachmentStateDetaching);
		if ([value isEqualToString:@"detached"])
		    return @(UAEC2AttachmentStateDetached);

		return @(UAEC2AttachmentStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2AttachmentState castValue = (UAEC2AttachmentState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2AttachmentStateAttaching:
			    return @"attaching";
			case UAEC2AttachmentStateAttached:
			    return @"attached";
			case UAEC2AttachmentStateDetaching:
			    return @"detaching";
			case UAEC2AttachmentStateDetached:
			    return @"detached";

			case UAEC2AttachmentStateUnknown:
			default:
				return nil;
        }
    }];
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
