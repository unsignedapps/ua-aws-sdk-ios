//
//  UAIAMListGroupPoliciesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@interface UAIAMListGroupPoliciesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *policyNames;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)policyNameAtIndex:(NSUInteger)index;

/**
 * Adds a PolicyName to the policyNames property.
 *
 * This will initialise policyNames with an empty mutable array if necessary.
**/
- (void)addPolicyName:(NSString *)policyName;

@end
