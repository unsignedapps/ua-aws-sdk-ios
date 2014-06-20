//
//  UAEC2Attachment.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Attachment.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2Attachment

@synthesize vpcID=_vpcID, state=_state;

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
        @"vpcID": @"ec2:vpcId",
        @"state": @"ec2:state"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2AttachmentStateAttaching), @(UAEC2AttachmentStateAttached), @(UAEC2AttachmentStateDetaching), @(UAEC2AttachmentStateDetached) ]
                                               stringValues:@[ @"attaching", @"attached", @"detaching", @"detached" ]
                                               unknownValue:@(UAEC2AttachmentStateUnknown)];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2AttachmentStateAttaching), @(UAEC2AttachmentStateAttached), @(UAEC2AttachmentStateDetaching), @(UAEC2AttachmentStateDetached) ]
                                               stringValues:@[ @"attaching", @"attached", @"detaching", @"detached" ]
                                               unknownValue:@(UAEC2AttachmentStateUnknown)];
}

@end

#pragma clang diagnostic pop