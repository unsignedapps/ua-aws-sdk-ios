//
//  UARDSDBInstanceSubnetGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBInstanceSubnetGroup.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSSubnet.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBInstanceSubnetGroup

@synthesize dBSubnetGroupName=_dBSubnetGroupName, dBSubnetGroupDescription=_dBSubnetGroupDescription, vpcID=_vpcID, subnetGroupStatus=_subnetGroupStatus, subnets=_subnets;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(subnetAtIndex:) propertyName:@"subnets"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSubnet:) propertyName:@"subnets"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dBSubnetGroupName": @"Rds:DBSubnetGroupName",
        @"dBSubnetGroupDescription": @"Rds:DBSubnetGroupDescription",
        @"vpcID": @"Rds:VpcId",
        @"subnetGroupStatus": @"Rds:SubnetGroupStatus",
        @"subnets": @"Rds:Subnets/Rds:Subnet"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)subnetsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSSubnet class]];
}

+ (NSValueTransformer *)subnetsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSSubnet class]];
}

@end

#pragma clang diagnostic pop