//
//  UAELBHealthCheck.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBHealthCheck : UAELBModel

@property (nonatomic, copy) NSString *target;
@property (nonatomic, strong) NSNumber *interval;
@property (nonatomic, strong) NSNumber *timeout;
@property (nonatomic, strong) NSNumber *unhealthyThreshold;
@property (nonatomic, strong) NSNumber *healthyThreshold;

@end
