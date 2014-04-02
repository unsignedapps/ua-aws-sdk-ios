//
//  UAEC2DescribeReservedInstancesModificationsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeReservedInstancesModificationsResponse.h"
#import "UAEC2ReservedInstancesModification.h"

@implementation UAEC2DescribeReservedInstancesModificationsResponse

@synthesize reservedInstancesModifications=_reservedInstancesModifications, nextToken=_nextToken;

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

- (UAEC2ReservedInstancesModification *)reservedInstancesModificationAtIndex:(NSUInteger)index
{
    if (self.reservedInstancesModifications == nil || index >= ([self.reservedInstancesModifications count]-1))
        return nil;

    return [self.reservedInstancesModifications objectAtIndex:index];
}

+ (NSValueTransformer *)reservedInstancesModificationsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ReservedInstancesModification class]];
}

@end
