//
//  UAKMSListKeyPoliciesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@interface UAKMSListKeyPoliciesResponse : UAKMSResponse

@property (nonatomic, copy) NSArray *policyNames;
@property (nonatomic, copy) NSString *nextMarker;
@property (nonatomic) BOOL truncated;

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
