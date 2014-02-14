//
//  UAELBAttachLoadBalancerToSubnetsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@interface UAELBAttachLoadBalancerToSubnetsResponse : UAELBResponse

@property (nonatomic, copy) NSArray *subnets;

@end
