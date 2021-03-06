//
//  UAEC2InstanceNetworkInterfaceAttachment.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceNetworkInterfaceAttachment.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2NetworkInterfaceAttachmentStatusAttaching), @(UAEC2NetworkInterfaceAttachmentStatusAttached), @(UAEC2NetworkInterfaceAttachmentStatusDetaching), @(UAEC2NetworkInterfaceAttachmentStatusDetached) ]
                                               stringValues:@[ @"attaching", @"attached", @"detaching", @"detached" ]
                                               unknownValue:@(UAEC2NetworkInterfaceAttachmentStatusUnknown)];
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2NetworkInterfaceAttachmentStatusAttaching), @(UAEC2NetworkInterfaceAttachmentStatusAttached), @(UAEC2NetworkInterfaceAttachmentStatusDetaching), @(UAEC2NetworkInterfaceAttachmentStatusDetached) ]
                                               stringValues:@[ @"attaching", @"attached", @"detaching", @"detached" ]
                                               unknownValue:@(UAEC2NetworkInterfaceAttachmentStatusUnknown)];
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

#pragma clang diagnostic pop