//
//  UAELBAttachLoadBalancerToSubnetsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@interface UAELBAttachLoadBalancerToSubnetsResponse : UAELBResponse

@property (nonatomic, copy) NSArray *subnets;

@end
