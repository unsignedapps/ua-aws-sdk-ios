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

/**
 * Retrieves the UACWDatapoint at the specified index.
**/
- (UACWDatapoint *)datapointAtIndex:(NSUInteger)index;

/**
 * Adds a Datapoint to the datapoints property.
 *
 * This will initialise datapoints with an empty mutable array if necessary.
**/
- (void)addDatapoint:(UACWDatapoint *)datapoint;

@end
