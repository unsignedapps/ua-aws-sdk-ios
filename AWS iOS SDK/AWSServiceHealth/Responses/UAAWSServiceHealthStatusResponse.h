//
//  UAAWSServiceHealthStatusResponse.h
//  AWS iOS SDK
//
//  Copyright (c) Desto 2014.
//  Created by Rob Amos.
//
//

#import "UAAWSServiceHealthResponse.h"
#import "UAAWSService.h"
#import "UAAWSRegion.h"

@interface UAAWSServiceHealthStatusResponse : UAAWSServiceHealthResponse

@property (nonatomic, copy) NSArray *recentOutages;
@property (nonatomic, copy) NSArray *currentOutages;

- (NSArray *)recentOutagesAffectingRegion:(UAAWSRegion)region;
- (NSArray *)recentOutagesAffectingService:(UAAWSService)service;
- (NSArray *)recentOutagesAffectingService:(UAAWSService)service inRegion:(UAAWSRegion)region;

- (NSArray *)currentOutagesAffectingRegion:(UAAWSRegion)region;
- (NSArray *)currentOutagesAffectingService:(UAAWSService)service;
- (NSArray *)currentOutagesAffectingService:(UAAWSService)service inRegion:(UAAWSRegion)region;

/**
 * Returns an array of UAAWSServiceHealthService objects with the current status and all outages.
**/
- (NSArray *)allServiceStatuses;

/**
 * Returns an array of all UAAWSServiceHealthService objects with the current status and all outages.
 *
 * Limited to the specified region.
**/
- (NSArray *)serviceStatusesInRegion:(UAAWSRegion)region;

@end
