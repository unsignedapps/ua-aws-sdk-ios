//
//  UASNSListPlatformApplicationsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
