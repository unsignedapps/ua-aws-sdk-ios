//
//  UAEC2SpotInstanceRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2SpotInstanceStateFault, UAEC2SpotInstanceStatus, UAEC2LaunchSpecification, UAEC2Tag;

@interface UAEC2SpotInstanceRequest : UAEC2Model

@property (nonatomic, copy) NSString *spotInstanceRequestID;
@property (nonatomic, strong) NSNumber *spotPrice;
@property (nonatomic) UAEC2SpotInstanceRequestType type;
@property (nonatomic) UAEC2SpotInstanceRequestState state;
@property (nonatomic, copy) UAEC2SpotInstanceStateFault *fault;
@property (nonatomic, copy) UAEC2SpotInstanceStatus *status;
@property (nonatomic, strong) NSDate *validFrom;
@property (nonatomic, strong) NSDate *validUntil;
@property (nonatomic, copy) NSString *launchGroup;
@property (nonatomic, copy) NSString *availabilityZoneGroup;
@property (nonatomic, copy) UAEC2LaunchSpecification *launchSpecification;
@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSDate *createTime;
@property (nonatomic) UAEC2SpotRequestProductDescription productDescription;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSString *launchedAvailabilityZone;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;

@end
