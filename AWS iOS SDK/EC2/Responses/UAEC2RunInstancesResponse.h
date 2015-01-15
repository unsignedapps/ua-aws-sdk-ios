//
//  UAEC2RunInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2GroupIdentifier, UAEC2Instance;

@interface UAEC2RunInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSString *reservationID;
@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *requesterID;
@property (nonatomic, copy) NSArray *groups;
@property (nonatomic, copy) NSArray *instances;

/**
 * Retrieves the UAEC2GroupIdentifier at the specified index.
**/
- (UAEC2GroupIdentifier *)groupAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Instance at the specified index.
**/
- (UAEC2Instance *)instanceAtIndex:(NSUInteger)index;

/**
 * Adds a Group to the groups property.
 *
 * This will initialise groups with an empty mutable array if necessary.
**/
- (void)addGroup:(UAEC2GroupIdentifier *)group;
/**
 * Adds a Instance to the instances property.
 *
 * This will initialise instances with an empty mutable array if necessary.
**/
- (void)addInstance:(UAEC2Instance *)instance;

@end
