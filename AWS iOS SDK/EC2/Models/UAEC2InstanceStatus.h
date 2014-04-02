//
//  UAEC2InstanceStatus.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2InstanceStatusEvent, UAEC2InstanceStatusSummary;

@interface UAEC2InstanceStatus : UAEC2Model

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) NSArray *events;
@property (nonatomic) UAEC2InstanceState instanceState;
@property (nonatomic, copy) UAEC2InstanceStatusSummary *systemStatus;
@property (nonatomic, copy) UAEC2InstanceStatusSummary *instanceStatus;

/**
 * Retrieves the UAEC2InstanceStatusEvent at the specified index.
**/
- (UAEC2InstanceStatusEvent *)eventAtIndex:(NSUInteger)index;

@end
