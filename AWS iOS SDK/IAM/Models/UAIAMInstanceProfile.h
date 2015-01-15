//
//  UAIAMInstanceProfile.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@class UAIAMRole;

@interface UAIAMInstanceProfile : UAIAMModel

@property (nonatomic, copy) NSString *path;
@property (nonatomic, copy) NSString *instanceProfileName;
@property (nonatomic, copy) NSString *instanceProfileID;
@property (nonatomic, copy) NSString *arn;
@property (nonatomic, copy) NSDate *createDate;
@property (nonatomic, copy) NSArray *roles;

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
