//
//  UAIAMGetGroupResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMGroup, UAIAMUser;

@interface UAIAMGetGroupResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMGroup *group;
@property (nonatomic, copy) NSArray *users;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UAIAMUser at the specified index.
**/
- (UAIAMUser *)userAtIndex:(NSUInteger)index;

/**
 * Adds a User to the users property.
 *
 * This will initialise users with an empty mutable array if necessary.
**/
- (void)addUser:(UAIAMUser *)user;

@end
