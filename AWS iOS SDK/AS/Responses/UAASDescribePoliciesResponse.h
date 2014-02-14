//
//  UAASDescribePoliciesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASScalingPolicy;

@interface UAASDescribePoliciesResponse : UAASResponse

@property (nonatomic, copy) NSArray *scalingPolicies;
@property (nonatomic, copy) NSString *nextToken;

@end
