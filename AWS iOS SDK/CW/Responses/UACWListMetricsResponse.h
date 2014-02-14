//
//  UACWListMetricsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UACWResponse.h"

@class UACWMetric;

@interface UACWListMetricsResponse : UACWResponse

@property (nonatomic, copy) NSArray *metrics;
@property (nonatomic, copy) NSString *nextToken;

@end
