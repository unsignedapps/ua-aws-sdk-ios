//
//  UAASDescribeAutoScalingInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASAutoScalingInstanceDetails;

@interface UAASDescribeAutoScalingInstancesResponse : UAASResponse

@property (nonatomic, copy) NSArray *autoScalingInstances;
@property (nonatomic, copy) NSString *nextToken;

@end
