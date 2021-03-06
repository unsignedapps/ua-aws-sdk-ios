//
//  UAEC2DescribeReservedInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeReservedInstancesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ReservedInstance.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeReservedInstancesResponse

@synthesize reservedInstances=_reservedInstances;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(reservedInstanceAtIndex:) propertyName:@"reservedInstances"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addReservedInstance:) propertyName:@"reservedInstances"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeReservedInstancesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"reservedInstances": @"ec2:reservedInstancesSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)reservedInstancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ReservedInstance class]];
}

@end

#pragma clang diagnostic pop