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

@end
