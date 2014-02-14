//
//  UAELBDetachLoadBalancerFromSubnetsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@interface UAELBDetachLoadBalancerFromSubnetsResponse : UAELBResponse

@property (nonatomic, copy) NSArray *subnets;

@end
