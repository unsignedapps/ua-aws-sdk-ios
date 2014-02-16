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

@end
