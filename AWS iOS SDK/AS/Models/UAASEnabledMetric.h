//
//  UAASEnabledMetric.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASEnabledMetric : UAASModel

@property (nonatomic, copy) NSString *metric;
@property (nonatomic, copy) NSString *granularity;

@end
