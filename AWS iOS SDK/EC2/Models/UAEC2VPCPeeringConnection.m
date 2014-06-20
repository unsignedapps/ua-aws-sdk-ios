//
//  UAEC2VPCPeeringConnection.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VPCPeeringConnection.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2AccepterVPCInfo.h"
#import "UAEC2RequesterVPCInfo.h"
#import "UAEC2VPCPeeringConnectionStatus.h"
#import "UAEC2Tag.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2VPCPeeringConnection

@synthesize accepterVPCInfo=_accepterVPCInfo, expirationTime=_expirationTime, requesterVPCInfo=_requesterVPCInfo, status=_status, tags=_tags, vpcPeeringConnectionID=_vpcPeeringConnectionID;

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
        @"accepterVPCInfo": @"ec2:accepterVpcInfo",
        @"expirationTime": @"ec2:expirationTime",
        @"requesterVPCInfo": @"ec2:requesterVpcInfo",
        @"status": @"ec2:status",
        @"tags": @"ec2:tagSet/ec2:item",
        @"vpcPeeringConnectionID": @"ec2:vpcPeeringConnectionId"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)accepterVPCInfoQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2AccepterVPCInfo class]];
}

+ (NSValueTransformer *)expirationTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)requesterVPCInfoQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2RequesterVPCInfo class]];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2VPCPeeringConnectionStatus class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)accepterVPCInfoXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2AccepterVPCInfo class]];
}

+ (NSValueTransformer *)expirationTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)requesterVPCInfoXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2RequesterVPCInfo class]];
}

+ (NSValueTransformer *)statusXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2VPCPeeringConnectionStatus class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end

#pragma clang diagnostic pop