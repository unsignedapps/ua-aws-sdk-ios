//
//  UAEC2NetworkACL.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2NetworkACL.h"
#import "UAEC2Entry.h"
#import "UAEC2NetworkACLAssociation.h"
#import "UAEC2Tag.h"

@implementation UAEC2NetworkACL

@synthesize networkACLID=_networkACLID, vpcID=_vpcID, isDefault=_isDefault, entries=_entries, associations=_associations, tags=_tags;

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
        @"networkACLID": @"ec2:networkAclId",
        @"vpcID": @"ec2:vpcId",
        @"isDefault": @"ec2:default",
        @"entries": @"ec2:entrySet/ec2:item",
        @"associations": @"ec2:associationSet/ec2:item",
        @"tags": @"ec2:tagSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2Entry *)entryAtIndex:(NSUInteger)index
{
    if (self.entries == nil || index >= ([self.entries count]-1))
        return nil;

    return [self.entries objectAtIndex:index];
}

- (UAEC2NetworkACLAssociation *)associationAtIndex:(NSUInteger)index
{
    if (self.associations == nil || index >= ([self.associations count]-1))
        return nil;

    return [self.associations objectAtIndex:index];
}

- (UAEC2Tag *)tagAtIndex:(NSUInteger)index
{
    if (self.tags == nil || index >= ([self.tags count]-1))
        return nil;

    return [self.tags objectAtIndex:index];
}

+ (NSValueTransformer *)entriesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Entry class]];
}

+ (NSValueTransformer *)associationsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2NetworkACLAssociation class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)isDefaultXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)entriesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Entry class]];
}

+ (NSValueTransformer *)associationsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2NetworkACLAssociation class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
