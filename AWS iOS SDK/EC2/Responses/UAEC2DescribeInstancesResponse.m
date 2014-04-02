//
//  UAEC2DescribeInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeInstancesResponse.h"
#import "UAEC2Reservation.h"

@implementation UAEC2DescribeInstancesResponse

@synthesize reservations=_reservations, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeInstancesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"reservations": @"ec2:reservationSet/ec2:item",
        @"nextToken": @"ec2:nextToken"
    }];
    return [keyPaths copy];
}

- (UAEC2Reservation *)reservationAtIndex:(NSUInteger)index
{
    if (self.reservations == nil || index >= ([self.reservations count]-1))
        return nil;

    return [self.reservations objectAtIndex:index];
}

+ (NSValueTransformer *)reservationsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Reservation class]];
}

@end
