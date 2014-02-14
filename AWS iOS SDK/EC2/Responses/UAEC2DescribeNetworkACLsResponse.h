//
//  UAEC2DescribeNetworkACLsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2NetworkACL;

@interface UAEC2DescribeNetworkACLsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *networkACLs;

@end
