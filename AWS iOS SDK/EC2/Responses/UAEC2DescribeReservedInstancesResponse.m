//
//  UAEC2DescribeReservedInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (UAEC2ReservedInstance *)reservedInstanceAtIndex:(NSUInteger)index
{
    if (self.reservedInstances == nil || index >= ([self.reservedInstances count]-1))
        return nil;

    return [self.reservedInstances objectAtIndex:index];
}

+ (NSValueTransformer *)reservedInstancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ReservedInstance class]];
}

@end
