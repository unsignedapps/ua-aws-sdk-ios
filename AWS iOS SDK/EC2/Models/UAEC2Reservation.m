//
//  UAEC2Reservation.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Reservation.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2Instance.h"

@implementation UAEC2Reservation

@synthesize reservationID=_reservationID, ownerID=_ownerID, requesterID=_requesterID, groups=_groups, instances=_instances;

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
        @"reservationID": @"ec2:reservationId",
        @"ownerID": @"ec2:ownerId",
        @"requesterID": @"ec2:requesterId",
        @"groups": @"ec2:groupSet/ec2:item",
        @"instances": @"ec2:instancesSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2GroupIdentifier *)groupAtIndex:(NSUInteger)index
{
    if (self.groups == nil || index >= ([self.groups count]-1))
        return nil;

    return [self.groups objectAtIndex:index];
}

- (UAEC2Instance *)instanceAtIndex:(NSUInteger)index
{
    if (self.instances == nil || index >= ([self.instances count]-1))
        return nil;

    return [self.instances objectAtIndex:index];
}

+ (NSValueTransformer *)groupsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)instancesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Instance class]];
}

+ (NSValueTransformer *)groupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)instancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Instance class]];
}

@end
