//
//  UAELBDeregisterInstancesFromLoadBalancerResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBInstance;

@interface UAELBDeregisterInstancesFromLoadBalancerResponse : UAELBResponse

@property (nonatomic, copy) NSArray *instances;

@end
