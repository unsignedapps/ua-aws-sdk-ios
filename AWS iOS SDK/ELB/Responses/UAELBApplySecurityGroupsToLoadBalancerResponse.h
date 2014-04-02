//
//  UAELBApplySecurityGroupsToLoadBalancerResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@interface UAELBApplySecurityGroupsToLoadBalancerResponse : UAELBResponse

@property (nonatomic, copy) NSArray *securityGroups;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)securityGroupAtIndex:(NSUInteger)index;

@end
