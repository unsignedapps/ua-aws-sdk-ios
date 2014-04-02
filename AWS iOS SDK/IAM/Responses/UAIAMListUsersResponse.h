//
//  UAIAMListUsersResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMUser;

@interface UAIAMListUsersResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *users;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UAIAMUser at the specified index.
**/
- (UAIAMUser *)userAtIndex:(NSUInteger)index;

@end
