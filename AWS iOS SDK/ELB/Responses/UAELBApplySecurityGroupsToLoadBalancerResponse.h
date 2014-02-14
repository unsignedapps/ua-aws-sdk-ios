//
//  UAELBApplySecurityGroupsToLoadBalancerResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@interface UAELBApplySecurityGroupsToLoadBalancerResponse : UAELBResponse

@property (nonatomic, copy) NSArray *securityGroups;

@end
