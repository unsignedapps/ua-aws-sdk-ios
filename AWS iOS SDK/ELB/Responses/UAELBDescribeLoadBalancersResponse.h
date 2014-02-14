//
//  UAELBDescribeLoadBalancersResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBLoadBalancerDescription;

@interface UAELBDescribeLoadBalancersResponse : UAELBResponse

@property (nonatomic, copy) NSArray *loadBalancerDescriptions;
@property (nonatomic, copy) NSString *nextMarker;

@end
