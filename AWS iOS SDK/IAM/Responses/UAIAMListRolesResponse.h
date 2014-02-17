//
//  UAIAMListRolesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMRole;

@interface UAIAMListRolesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *roles;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

@end
