//
//  UAEC2InstanceStatusSummary.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2InstanceStatusDetails;

@interface UAEC2InstanceStatusSummary : UAEC2Model

@property (nonatomic) UAEC2InstanceStatusValue status;
@property (nonatomic, copy) NSArray *details;

/**
 * Retrieves the UAEC2InstanceStatusDetails at the specified index.
**/
- (UAEC2InstanceStatusDetails *)detailAtIndex:(NSUInteger)index;

/**
 * Adds a Detail to the details property.
 *
 * This will initialise details with an empty mutable array if necessary.
**/
- (void)addDetail:(UAEC2InstanceStatusDetails *)detail;

@end
