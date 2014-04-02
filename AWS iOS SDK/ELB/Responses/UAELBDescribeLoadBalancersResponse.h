//
//  UAELBDescribeLoadBalancersResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBLoadBalancerDescription;

@interface UAELBDescribeLoadBalancersResponse : UAELBResponse

@property (nonatomic, copy) NSArray *loadBalancerDescriptions;
@property (nonatomic, copy) NSString *nextMarker;

/**
 * Retrieves the UAELBLoadBalancerDescription at the specified index.
**/
- (UAELBLoadBalancerDescription *)loadBalancerDescriptionAtIndex:(NSUInteger)index;

@end
