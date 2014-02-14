//
//  UAEC2DescribeSubnetsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Subnet;

@interface UAEC2DescribeSubnetsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *subnets;

@end
