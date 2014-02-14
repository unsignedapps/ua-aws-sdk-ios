//
//  UAEC2IPPermission.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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

@end
