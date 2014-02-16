//
//  UAELBLoadBalancerAttributes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBLoadBalancerAttributes : UAELBModel

@property (nonatomic) BOOL crossZoneLoadBalancing;

- (id)initWithCrossZoneLoadBalancing:(BOOL)crossZoneLoadBalancing;

@end
