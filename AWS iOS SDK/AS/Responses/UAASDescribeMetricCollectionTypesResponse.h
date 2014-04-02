//
//  UAASDescribeMetricCollectionTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASMetricCollectionType, UAASMetricGranularityType;

@interface UAASDescribeMetricCollectionTypesResponse : UAASResponse

@property (nonatomic, copy) NSArray *metrics;
@property (nonatomic, copy) NSArray *granularities;

/**
 * Retrieves the UAASMetricCollectionType at the specified index.
**/
- (UAASMetricCollectionType *)metricAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAASMetricGranularityType at the specified index.
**/
- (UAASMetricGranularityType *)granularityAtIndex:(NSUInteger)index;

@end
