//
//  UAASDescribeScalingProcessTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASProcessType;

@interface UAASDescribeScalingProcessTypesResponse : UAASResponse

@property (nonatomic, copy) NSArray *processes;

@end
