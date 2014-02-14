//
//  UAEC2DescribeReservedInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ReservedInstance;

@interface UAEC2DescribeReservedInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *reservedInstances;

@end
