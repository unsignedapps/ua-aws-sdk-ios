//
//  UAEC2AttachVPNGatewayResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AttachVPNGatewayResponse.h"
#import "UAEC2Attachment.h"

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
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2Attachment class]];
}

@end
