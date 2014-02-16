//
//  UAEC2NetworkInterface.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2NetworkInterface.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2NetworkInterfaceAttachment.h"
#import "UAEC2NetworkInterfaceAssociation.h"
#import "UAEC2Tag.h"
#import "UAEC2PrivateIPAddress.h"

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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"available"])
		    return @(UAEC2NetworkInterfaceStateAvailable);
		if ([value isEqualToString:@"attaching"])
		    return @(UAEC2NetworkInterfaceStateAttaching);
		if ([value isEqualToString:@"in-use"])
		    return @(UAEC2NetworkInterfaceStateInUse);
		if ([value isEqualToString:@"detaching"])
		    return @(UAEC2NetworkInterfaceStateDetaching);

		return @(UAEC2NetworkInterfaceStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2NetworkInterfaceState castValue = (UAEC2NetworkInterfaceState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2NetworkInterfaceStateAvailable:
			    return @"available";
			case UAEC2NetworkInterfaceStateAttaching:
			    return @"attaching";
			case UAEC2NetworkInterfaceStateInUse:
			    return @"in-use";
			case UAEC2NetworkInterfaceStateDetaching:
			    return @"detaching";

			case UAEC2NetworkInterfaceStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)groupsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)attachmentQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2NetworkInterfaceAttachment class]];
}

+ (NSValueTransformer *)associationQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2NetworkInterfaceAssociation class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)privateIPAddressesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2PrivateIPAddress class]];
}

+ (NSValueTransformer *)requesterManagedXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2NetworkInterfaceStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"available"])
		    return @(UAEC2NetworkInterfaceStateAvailable);
		if ([value isEqualToString:@"attaching"])
		    return @(UAEC2NetworkInterfaceStateAttaching);
		if ([value isEqualToString:@"in-use"])
		    return @(UAEC2NetworkInterfaceStateInUse);
		if ([value isEqualToString:@"detaching"])
		    return @(UAEC2NetworkInterfaceStateDetaching);

		return @(UAEC2NetworkInterfaceStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2NetworkInterfaceState castValue = (UAEC2NetworkInterfaceState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2NetworkInterfaceStateAvailable:
			    return @"available";
			case UAEC2NetworkInterfaceStateAttaching:
			    return @"attaching";
			case UAEC2NetworkInterfaceStateInUse:
			    return @"in-use";
			case UAEC2NetworkInterfaceStateDetaching:
			    return @"detaching";

			case UAEC2NetworkInterfaceStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)sourceDestCheckXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)groupsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)attachmentXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2NetworkInterfaceAttachment class]];
}

+ (NSValueTransformer *)associationXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2NetworkInterfaceAssociation class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)privateIPAddressesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2PrivateIPAddress class]];
}

@end
