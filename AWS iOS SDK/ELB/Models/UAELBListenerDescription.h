//
//  UAELBListenerDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@class UAELBListener;

@interface UAELBListenerDescription : UAELBModel

@property (nonatomic, copy) UAELBListener *listener;
@property (nonatomic, copy) NSArray *policyNames;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)policyNameAtIndex:(NSUInteger)index;

/**
 * Adds a PolicyName to the policyNames property.
 *
 * This will initialise policyNames with an empty mutable array if necessary.
**/
- (void)addPolicyName:(NSString *)policyName;

@end
