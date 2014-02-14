//
//  UAAWSServiceHealthService.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 13/02/2014.
//
//

#import "UAAWSServiceHealthModel.h"
#import "UAAWSService.h"
#import "UAAWSRegion.h"

@interface UAAWSServiceHealthService : UAAWSServiceHealthModel

@property (nonatomic, readonly) UAAWSService service;
@property (nonatomic, copy, readonly) NSString *serviceName;
@property (nonatomic, copy, readonly) NSString *groupName;
@property (nonatomic, copy, readonly) NSArray *recentOutages;
@property (nonatomic, copy, readonly) NSArray *currentOutages;


/**
 * Returns the status of the service in the specified region.
 *
 * Typically this is the worst status of the matching outages.
**/
- (UAAWSServiceHealthOutageType)currentStatusForRegion:(UAAWSRegion)region;

/**
 * Returns the current status description of the service in the specified region.
 *
 * This will be a healthy text string, or the title/summary of the worst outage.
**/
- (NSString *)currentStatusDescriptionForRegion:(UAAWSRegion)region;

/**
 * Whether or not the specified service is available in the specified region.
**/
+ (BOOL)isService:(UAAWSService)service availableInRegion:(UAAWSRegion)region;
@end
