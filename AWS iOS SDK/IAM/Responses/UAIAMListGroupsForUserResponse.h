//
//  UAIAMListGroupsForUserResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMGroup;

@interface UAIAMListGroupsForUserResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *groups;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UAIAMGroup at the specified index.
**/
- (UAIAMGroup *)groupAtIndex:(NSUInteger)index;

/**
 * Adds a Group to the groups property.
 *
 * This will initialise groups with an empty mutable array if necessary.
**/
- (void)addGroup:(UAIAMGroup *)group;

@end
