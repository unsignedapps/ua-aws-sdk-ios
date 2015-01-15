//
//  UAEC2AttachVPNGatewayResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AttachVPNGatewayResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Attachment.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2AttachVPNGatewayResponse

@synthesize vpcAttachment=_vpcAttachment;

+ (NSString *)XPathPrefix
{
    return @"./ec2:AttachVpnGatewayResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"vpcAttachment": @"ec2:attachment"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)vpcAttachmentXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2Attachment class]];
}

@end

#pragma clang diagnostic pop