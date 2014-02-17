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

@end