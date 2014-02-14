//
//  UAELBLoadBalancerAttributes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBLoadBalancerAttributes : UAELBModel

@property (nonatomic) BOOL crossZoneLoadBalancing;

- (id)initWithCrossZoneLoadBalancing:(BOOL)crossZoneLoadBalancing;

@end
