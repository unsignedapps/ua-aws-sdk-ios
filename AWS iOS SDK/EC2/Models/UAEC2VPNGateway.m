//
//  UAEC2VPNGateway.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VPNGateway.h"
#import "UAEC2VPCAttachment.h"
#import "UAEC2Tag.h"

@implementation UAEC2VPNGateway

@synthesize vpnGatewayID=_vpnGatewayID, state=_state, type=_type, availabilityZone=_availabilityZone, vpcAttachments=_vpcAttachments, tags=_tags;

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
        @"vpnGatewayID": @"ec2:vpnGatewayId",
        @"state": @"ec2:state",
        @"type": @"ec2:type",
        @"availabilityZone": @"ec2:availabilityZone",
        @"vpcAttachments": @"ec2:attachments/ec2:item",
        @"tags": @"ec2:tagSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)vpcAttachmentsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2VPCAttachment class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)vpcAttachmentsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2VPCAttachment class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
