//
//  UAIAMListRolesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMRole;

@interface UAIAMListRolesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *roles;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UAIAMRole at the specified index.
**/
- (UAIAMRole *)roleAtIndex:(NSUInteger)index;

/**
 * Adds a Role to the roles property.
 *
 * This will initialise roles with an empty mutable array if necessary.
**/
- (void)addRole:(UAIAMRole *)role;

@end
