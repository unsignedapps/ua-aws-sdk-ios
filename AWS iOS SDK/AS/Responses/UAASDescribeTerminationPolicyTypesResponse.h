//
//  UAASDescribeTerminationPolicyTypesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
