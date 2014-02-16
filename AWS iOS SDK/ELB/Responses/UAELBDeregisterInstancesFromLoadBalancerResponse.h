//
//  UAELBDeregisterInstancesFromLoadBalancerResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBInstance;

@interface UAELBDeregisterInstancesFromLoadBalancerResponse : UAELBResponse

@property (nonatomic, copy) NSArray *instances;

@end
