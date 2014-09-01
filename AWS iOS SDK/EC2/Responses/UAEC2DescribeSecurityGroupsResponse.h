//
//  UAEC2DescribeSecurityGroupsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2SecurityGroup;

@interface UAEC2DescribeSecurityGroupsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *securityGroups;

/**
 * Retrieves the UAEC2SecurityGroup at the specified index.
**/
- (UAEC2SecurityGroup *)securityGroupAtIndex:(NSUInteger)index;

/**
 * Adds a SecurityGroup to the securityGroups property.
 *
 * This will initialise securityGroups with an empty mutable array if necessary.
**/
- (void)addSecurityGroup:(UAEC2SecurityGroup *)securityGroup;

@end
