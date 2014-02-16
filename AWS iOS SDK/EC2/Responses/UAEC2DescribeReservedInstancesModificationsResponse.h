//
//  UAEC2DescribeReservedInstancesModificationsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ReservedInstancesModification;

@interface UAEC2DescribeReservedInstancesModificationsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *reservedInstancesModifications;
@property (nonatomic, copy) NSString *nextToken;

@end
