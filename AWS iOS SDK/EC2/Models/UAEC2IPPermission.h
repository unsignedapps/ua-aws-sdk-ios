//
//  UAEC2IPPermission.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2UserIdGroupPair, UAEC2IPRange;

@interface UAEC2IPPermission : UAEC2Model

@property (nonatomic, copy) NSString *ipProtocol;
@property (nonatomic, strong) NSNumber *fromPort;
@property (nonatomic, strong) NSNumber *toPort;
@property (nonatomic, strong) NSMutableArray *userIdGroupPairs;
@property (nonatomic, strong) NSMutableArray *ipRanges;

/**
 * Retrieves the UAEC2UserIdGroupPair at the specified index.
**/
- (UAEC2UserIdGroupPair *)userIdGroupPairAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2IPRange at the specified index.
**/
- (UAEC2IPRange *)ipRangeAtIndex:(NSUInteger)index;

/**
 * Adds a UserIdGroupPair to the userIdGroupPairs property.
 *
 * This will initialise userIdGroupPairs with an empty mutable array if necessary.
**/
- (void)addUserIdGroupPair:(UAEC2UserIdGroupPair *)userIdGroupPair;
/**
 * Adds a IPRange to the ipRanges property.
 *
 * This will initialise ipRanges with an empty mutable array if necessary.
**/
- (void)addIPRange:(UAEC2IPRange *)iPRange;

@end
