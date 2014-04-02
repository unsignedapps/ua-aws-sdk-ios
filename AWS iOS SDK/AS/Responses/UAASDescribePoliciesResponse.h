//
//  UAASDescribePoliciesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASScalingPolicy;

@interface UAASDescribePoliciesResponse : UAASResponse

@property (nonatomic, copy) NSArray *scalingPolicies;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAASScalingPolicy at the specified index.
**/
- (UAASScalingPolicy *)scalingPolicyAtIndex:(NSUInteger)index;

@end
