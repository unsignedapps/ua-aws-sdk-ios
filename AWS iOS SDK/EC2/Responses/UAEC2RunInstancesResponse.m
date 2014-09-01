//
//  UAEC2RunInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RunInstancesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2Instance.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2RunInstancesResponse

@synthesize reservationID=_reservationID, ownerID=_ownerID, requesterID=_requesterID, groups=_groups, instances=_instances;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(groupAtIndex:) propertyName:@"groups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(instanceAtIndex:) propertyName:@"instances"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGroup:) propertyName:@"groups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addInstance:) propertyName:@"instances"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:RunInstancesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

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

+ (NSValueTransformer *)groupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)instancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Instance class]];
}

@end

#pragma clang diagnostic pop