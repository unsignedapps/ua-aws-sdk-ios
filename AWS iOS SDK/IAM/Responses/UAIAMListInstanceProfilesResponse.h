//
//  UAIAMListInstanceProfilesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMInstanceProfile;

@interface UAIAMListInstanceProfilesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *instanceProfiles;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UAIAMInstanceProfile at the specified index.
**/
- (UAIAMInstanceProfile *)instanceProfileAtIndex:(NSUInteger)index;

/**
 * Adds a InstanceProfile to the instanceProfiles property.
 *
 * This will initialise instanceProfiles with an empty mutable array if necessary.
**/
- (void)addInstanceProfile:(UAIAMInstanceProfile *)instanceProfile;

@end
