//
//  UAELBModifyLoadBalancerAttributesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBLoadBalancerAttributes;

@interface UAELBModifyLoadBalancerAttributesResponse : UAELBResponse

@property (nonatomic, copy) NSString *loadBalancerName;
@property (nonatomic, copy) UAELBLoadBalancerAttributes *loadBalancerAttributes;

@end
