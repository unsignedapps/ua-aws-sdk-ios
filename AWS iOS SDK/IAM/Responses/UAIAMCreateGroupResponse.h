//
//  UAIAMCreateGroupResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMGroup;

@interface UAIAMCreateGroupResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMGroup *group;

@end
