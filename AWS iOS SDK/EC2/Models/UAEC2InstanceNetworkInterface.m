//
//  UAEC2InstanceNetworkInterface.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceNetworkInterface.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2InstanceNetworkInterfaceAttachment.h"
#import "UAEC2InstanceNetworkInterfaceAssociation.h"
#import "UAEC2InstancePrivateIPAddress.h"

@implementation UAEC2InstanceNetworkInterface

@synthesize networkInterfaceID=_networkInterfaceID, subnetID=_subnetID, vpcID=_vpcID, descriptionValue=_descriptionValue, macAddress=_macAddress, ownerID=_ownerID, status=_status, privateIPAddress=_privateIPAddress, privateDNSName=_privateDNSName, sourceDestCheck=_sourceDestCheck, groups=_groups, attachment=_attachment, association=_association, privateIPAddresses=_privateIPAddresses;

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
        @"networkInterfaceID": @"ec2:networkInterfaceId",
        @"subnetID": @"ec2:subnetId",
        @"vpcID": @"ec2:vpcId",
        @"descriptionValue": @"ec2:description",
        @"macAddress": @"ec2:macAddress",
        @"ownerID": @"ec2:ownerId",
        @"status": @"ec2:status",
        @"privateIPAddress": @"ec2:privateIpAddress",
        @"privateDNSName": @"ec2:privateDnsName",
        @"sourceDestCheck": @"ec2:sourceDestCheck",
        @"groups": @"ec2:groupSet/ec2:item",
        @"attachment": @"ec2:attachment",
        @"association": @"ec2:association",
        @"privateIPAddresses": @"ec2:privateIpAddressesSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)groupsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)attachmentQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceAttachment class]];
}

+ (NSValueTransformer *)associationQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceAssociation class]];
}

+ (NSValueTransformer *)privateIPAddressesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2InstancePrivateIPAddress class]];
}

+ (NSValueTransformer *)groupsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)attachmentXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceAttachment class]];
}

+ (NSValueTransformer *)associationXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceAssociation class]];
}

+ (NSValueTransformer *)privateIPAddressesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2InstancePrivateIPAddress class]];
}

@end
