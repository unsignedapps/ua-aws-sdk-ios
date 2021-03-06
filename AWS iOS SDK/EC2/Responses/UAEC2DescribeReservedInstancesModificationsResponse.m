//
//  UAEC2DescribeReservedInstancesModificationsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeReservedInstancesModificationsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ReservedInstancesModification.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeReservedInstancesModificationsResponse

@synthesize reservedInstancesModifications=_reservedInstancesModifications, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(reservedInstancesModificationAtIndex:) propertyName:@"reservedInstancesModifications"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addReservedInstancesModification:) propertyName:@"reservedInstancesModifications"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeReservedInstancesModificationsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"reservedInstancesModifications": @"ec2:reservedInstancesModificationsSet/ec2:item",
        @"nextToken": @"ec2:nextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)reservedInstancesModificationsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ReservedInstancesModification class]];
}

@end

#pragma clang diagnostic pop