//
//  UAEC2InstanceNetworkInterfaceAttachment.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceNetworkInterfaceAttachment.h"

@implementation UAEC2InstanceNetworkInterfaceAttachment

@synthesize attachmentID=_attachmentID, deviceIndex=_deviceIndex, status=_status, attachTime=_attachTime, deleteOnTermination=_deleteOnTermination;

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
        @"attachmentID": @"ec2:attachmentId",
        @"deviceIndex": @"ec2:deviceIndex",
        @"status": @"ec2:status",
        @"attachTime": @"ec2:attachTime",
        @"deleteOnTermination": @"ec2:deleteOnTermination"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"attaching"])
		    return @(UAEC2NetworkInterfaceAttachmentStatusAttaching);
		if ([value isEqualToString:@"attached"])
		    return @(UAEC2NetworkInterfaceAttachmentStatusAttached);
		if ([value isEqualToString:@"detaching"])
		    return @(UAEC2NetworkInterfaceAttachmentStatusDetaching);
		if ([value isEqualToString:@"detached"])
		    return @(UAEC2NetworkInterfaceAttachmentStatusDetached);

		return @(UAEC2NetworkInterfaceAttachmentStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2NetworkInterfaceAttachmentStatus castValue = (UAEC2NetworkInterfaceAttachmentStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2NetworkInterfaceAttachmentStatusAttaching:
			    return @"attaching";
			case UAEC2NetworkInterfaceAttachmentStatusAttached:
			    return @"attached";
			case UAEC2NetworkInterfaceAttachmentStatusDetaching:
			    return @"detaching";
			case UAEC2NetworkInterfaceAttachmentStatusDetached:
			    return @"detached";

			case UAEC2NetworkInterfaceAttachmentStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)attachTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)deviceIndexXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2NetworkInterfaceAttachmentStatusUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"attaching"])
		    return @(UAEC2NetworkInterfaceAttachmentStatusAttaching);
		if ([value isEqualToString:@"attached"])
		    return @(UAEC2NetworkInterfaceAttachmentStatusAttached);
		if ([value isEqualToString:@"detaching"])
		    return @(UAEC2NetworkInterfaceAttachmentStatusDetaching);
		if ([value isEqualToString:@"detached"])
		    return @(UAEC2NetworkInterfaceAttachmentStatusDetached);

		return @(UAEC2NetworkInterfaceAttachmentStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2NetworkInterfaceAttachmentStatus castValue = (UAEC2NetworkInterfaceAttachmentStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2NetworkInterfaceAttachmentStatusAttaching:
			    return @"attaching";
			case UAEC2NetworkInterfaceAttachmentStatusAttached:
			    return @"attached";
			case UAEC2NetworkInterfaceAttachmentStatusDetaching:
			    return @"detaching";
			case UAEC2NetworkInterfaceAttachmentStatusDetached:
			    return @"detached";

			case UAEC2NetworkInterfaceAttachmentStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)attachTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)deleteOnTerminationXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
