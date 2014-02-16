//
//  UAEC2UserIdGroupPair.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2UserIdGroupPair : UAEC2Model

@property (nonatomic, copy) NSString *userID;
@property (nonatomic, copy) NSString *groupName;
@property (nonatomic, copy) NSString *groupID;

@end
