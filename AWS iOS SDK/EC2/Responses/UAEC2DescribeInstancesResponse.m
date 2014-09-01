//
//  UAEC2DescribeInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeInstancesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Reservation.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeInstancesResponse

@synthesize reservations=_reservations, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(reservationAtIndex:) propertyName:@"reservations"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addReservation:) propertyName:@"reservations"];
	}
	return self;
}

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

+ (NSValueTransformer *)reservationsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Reservation class]];
}

@end

#pragma clang diagnostic pop