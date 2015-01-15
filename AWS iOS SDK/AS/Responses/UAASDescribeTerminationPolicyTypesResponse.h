//
//  UAASDescribeTerminationPolicyTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@interface UAASDescribeTerminationPolicyTypesResponse : UAASResponse

@property (nonatomic, copy) NSArray *terminationPolicyTypes;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)terminationPolicyTypeAtIndex:(NSUInteger)index;

/**
 * Adds a TerminationPolicyType to the terminationPolicyTypes property.
 *
 * This will initialise terminationPolicyTypes with an empty mutable array if necessary.
**/
- (void)addTerminationPolicyType:(NSString *)terminationPolicyType;

@end
