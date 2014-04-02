//
//  UAEC2SecurityGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2SecurityGroup.h"
#import "UAEC2IPPermission.h"
#import "UAEC2Tag.h"

@implementation UAEC2SecurityGroup

@synthesize ownerID=_ownerID, groupName=_groupName, groupID=_groupID, descriptionValue=_descriptionValue, ipPermissions=_ipPermissions, ipPermissionsEgress=_ipPermissionsEgress, vpcID=_vpcID, tags=_tags;

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
        @"ownerID": @"ec2:ownerId",
        @"groupName": @"ec2:groupName",
        @"groupID": @"ec2:groupId",
        @"descriptionValue": @"ec2:groupDescription",
        @"ipPermissions": @"ec2:ipPermissions/ec2:item",
        @"ipPermissionsEgress": @"ec2:ipPermissionsEgress/ec2:item",
        @"vpcID": @"ec2:vpcId",
        @"tags": @"ec2:tagSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2IPPermission *)ipPermissionAtIndex:(NSUInteger)index
{
    if (self.ipPermissions == nil || index >= ([self.ipPermissions count]-1))
        return nil;

    return [self.ipPermissions objectAtIndex:index];
}

- (UAEC2IPPermission *)ipPermissionEgressAtIndex:(NSUInteger)index
{
    if (self.ipPermissionsEgress == nil || index >= ([self.ipPermissionsEgress count]-1))
        return nil;

    return [self.ipPermissionsEgress objectAtIndex:index];
}

- (UAEC2Tag *)tagAtIndex:(NSUInteger)index
{
    if (self.tags == nil || index >= ([self.tags count]-1))
        return nil;

    return [self.tags objectAtIndex:index];
}

+ (NSValueTransformer *)ipPermissionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2IPPermission class]];
}

+ (NSValueTransformer *)ipPermissionsEgressQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2IPPermission class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)ipPermissionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2IPPermission class]];
}

+ (NSValueTransformer *)ipPermissionsEgressXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2IPPermission class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
