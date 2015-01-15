//
//  UAELBLoadBalancerAttributes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@class UAELBAccessLog, UAELBConnectionDraining, UAELBConnectionSettings, UAELBAdditionalAttribute;

@interface UAELBLoadBalancerAttributes : UAELBModel

@property (nonatomic) BOOL crossZoneLoadBalancing;
@property (nonatomic, copy) UAELBAccessLog *accessLog;
@property (nonatomic, copy) UAELBConnectionDraining *connectionDraining;
@property (nonatomic, copy) UAELBConnectionSettings *connectionSettings;
@property (nonatomic, strong) NSMutableArray *additionalAttributes;

/**
 * Retrieves the UAELBAdditionalAttribute at the specified index.
**/
- (UAELBAdditionalAttribute *)additionalAttributeAtIndex:(NSUInteger)index;

/**
 * Adds a AdditionalAttribute to the additionalAttributes property.
 *
 * This will initialise additionalAttributes with an empty mutable array if necessary.
**/
- (void)addAdditionalAttribute:(UAELBAdditionalAttribute *)additionalAttribute;

@end
