//
//  UAEC2NetworkInterface.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2NetworkInterface.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2NetworkInterfaceAttachment.h"
#import "UAEC2NetworkInterfaceAssociation.h"
#import "UAEC2Tag.h"
#import "UAEC2PrivateIPAddress.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2NetworkInterface

@synthesize networkInterfaceID=_networkInterfaceID, subnetID=_subnetID, vpcID=_vpcID, availabilityZone=_availabilityZone, descriptionValue=_descriptionValue, ownerID=_ownerID, requesterID=_requesterID, requesterManaged=_requesterManaged, state=_state, macAddress=_macAddress, privateIPAddress=_privateIPAddress, privateDNSName=_privateDNSName, sourceDestCheck=_sourceDestCheck, groups=_groups, attachment=_attachment, association=_association, tags=_tags, privateIPAddresses=_privateIPAddresses;

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
        @"availabilityZone": @"ec2:availabilityZone",
        @"descriptionValue": @"ec2:description",
        @"ownerID": @"ec2:ownerId",
        @"requesterID": @"ec2:requesterId",
        @"requesterManaged": @"ec2:requesterManaged",
        @"state": @"ec2:status",
        @"macAddress": @"ec2:macAddress",
        @"privateIPAddress": @"ec2:privateIpAddress",
        @"privateDNSName": @"ec2:privateDnsName",
        @"sourceDestCheck": @"ec2:sourceDestCheck",
        @"groups": @"ec2:groupSet/ec2:item",
        @"attachment": @"ec2:attachment",
        @"association": @"ec2:association",
        @"tags": @"ec2:tagSet/ec2:item",
        @"privateIPAddresses": @"ec2:privateIpAddressesSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2NetworkInterfaceStateAvailable), @(UAEC2NetworkInterfaceStateAttaching), @(UAEC2NetworkInterfaceStateInUse), @(UAEC2NetworkInterfaceStateDetaching) ]
                                               stringValues:@[ @"available", @"attaching", @"in-use", @"detaching" ]
                                               unknownValue:@(UAEC2NetworkInterfaceStateUnknown)];
}

+ (NSValueTransformer *)groupsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)attachmentQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2NetworkInterfaceAttachment class]];
}

+ (NSValueTransformer *)associationQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2NetworkInterfaceAssociation class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)privateIPAddressesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2PrivateIPAddress class]];
}

+ (NSValueTransformer *)requesterManagedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2NetworkInterfaceStateAvailable), @(UAEC2NetworkInterfaceStateAttaching), @(UAEC2NetworkInterfaceStateInUse), @(UAEC2NetworkInterfaceStateDetaching) ]
                                               stringValues:@[ @"available", @"attaching", @"in-use", @"detaching" ]
                                               unknownValue:@(UAEC2NetworkInterfaceStateUnknown)];
}

+ (NSValueTransformer *)sourceDestCheckXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)groupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)attachmentXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2NetworkInterfaceAttachment class]];
}

+ (NSValueTransformer *)associationXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2NetworkInterfaceAssociation class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)privateIPAddressesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2PrivateIPAddress class]];
}

@end

#pragma clang diagnostic pop