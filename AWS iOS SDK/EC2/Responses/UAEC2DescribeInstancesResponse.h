//
//  UAEC2DescribeInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Reservation;

@interface UAEC2DescribeInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *reservations;
@property (nonatomic, copy) NSString *nextToken;

@end
