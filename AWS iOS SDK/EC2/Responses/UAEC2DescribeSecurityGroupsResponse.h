//
//  UAEC2DescribeSecurityGroupsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2SecurityGroup;

@interface UAEC2DescribeSecurityGroupsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *securityGroups;

@end
