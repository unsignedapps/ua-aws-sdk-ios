//
//  UAELBDescribeLoadBalancerAttributesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBLoadBalancerAttributes;

@interface UAELBDescribeLoadBalancerAttributesResponse : UAELBResponse

@property (nonatomic, copy) UAELBLoadBalancerAttributes *loadBalancerAttributes;

@end
