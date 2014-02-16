//
//  UAEC2DescribeVPCsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VPC;

@interface UAEC2DescribeVPCsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *vpcs;

@end
