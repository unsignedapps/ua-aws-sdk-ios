//
//  UAEC2DescribeReservedInstancesOfferingsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ReservedInstancesOffering;

@interface UAEC2DescribeReservedInstancesOfferingsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *reservedInstancesOfferings;
@property (nonatomic, copy) NSString *nextToken;

@end
