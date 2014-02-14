//
//  UAELBRegisterInstancesWithLoadBalancerResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBInstance;

@interface UAELBRegisterInstancesWithLoadBalancerResponse : UAELBResponse

@property (nonatomic, copy) NSArray *instances;

@end
