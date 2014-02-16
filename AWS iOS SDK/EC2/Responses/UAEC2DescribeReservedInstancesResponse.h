//
//  UAEC2DescribeReservedInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ReservedInstance;

@interface UAEC2DescribeReservedInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *reservedInstances;

@end
