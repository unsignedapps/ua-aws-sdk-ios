//
//  UAEC2DescribeReservedInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeReservedInstancesResponse.h"
#import "UAEC2ReservedInstance.h"

@implementation UAEC2DescribeReservedInstancesResponse

@synthesize reservedInstances=_reservedInstances;

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
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2ReservedInstance class]];
}

@end
