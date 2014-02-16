//
//  UAELBDetachLoadBalancerFromSubnetsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@interface UAELBDetachLoadBalancerFromSubnetsResponse : UAELBResponse

@property (nonatomic, copy) NSArray *subnets;

@end
