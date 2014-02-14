//
//  UAEC2SpotInstanceRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2SpotInstanceStateFault, UAEC2SpotInstanceStatus, UAEC2LaunchSpecification, UAEC2Tag;

@interface UAEC2SpotInstanceRequest : UAEC2Model

@property (nonatomic, copy) NSString *spotInstanceRequestID;
@property (nonatomic, copy) NSString *spotPrice;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) UAEC2SpotInstanceStateFault *fault;
@property (nonatomic, copy) UAEC2SpotInstanceStatus *status;
@property (nonatomic, copy) NSString *validFrom;
@property (nonatomic, copy) NSString *validUntil;
@property (nonatomic, copy) NSString *launchGroup;
@property (nonatomic, copy) NSString *availabilityZoneGroup;
@property (nonatomic, copy) UAEC2LaunchSpecification *launchSpecification;
@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSDate *createTime;
@property (nonatomic, copy) NSString *productDescription;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSString *launchedAvailabilityZone;

@end
