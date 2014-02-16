//
//  UACWGetMetricStatisticsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWResponse.h"

@class UACWDatapoint;

@interface UACWGetMetricStatisticsResponse : UACWResponse

@property (nonatomic, copy) NSString *label;
@property (nonatomic, copy) NSArray *datapoints;

@end
