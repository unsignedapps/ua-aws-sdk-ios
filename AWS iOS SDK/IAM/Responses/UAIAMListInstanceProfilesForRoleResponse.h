//
//  UAIAMListInstanceProfilesForRoleResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMInstanceProfile;

@interface UAIAMListInstanceProfilesForRoleResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *instanceProfiles;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UAIAMInstanceProfile at the specified index.
**/
- (UAIAMInstanceProfile *)instanceProfileAtIndex:(NSUInteger)index;

@end
