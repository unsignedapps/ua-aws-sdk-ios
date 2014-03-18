//
//  UAELBLoadBalancerAttributes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@class UAELBAccessLog;

@interface UAELBLoadBalancerAttributes : UAELBModel

@property (nonatomic) BOOL crossZoneLoadBalancing;
@property (nonatomic, copy) UAELBAccessLog *accessLog;

@end
