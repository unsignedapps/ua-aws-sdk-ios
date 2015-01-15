//
//  UASNSListPlatformApplicationsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSPlatformApplication;

@interface UASNSListPlatformApplicationsResponse : UASNSResponse

@property (nonatomic, copy) NSArray *platformApplications;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UASNSPlatformApplication at the specified index.
**/
- (UASNSPlatformApplication *)platformApplicationAtIndex:(NSUInteger)index;

/**
 * Adds a PlatformApplication to the platformApplications property.
 *
 * This will initialise platformApplications with an empty mutable array if necessary.
**/
- (void)addPlatformApplication:(UASNSPlatformApplication *)platformApplication;

@end
