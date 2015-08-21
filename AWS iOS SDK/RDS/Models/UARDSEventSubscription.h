//
//  UARDSEventSubscription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSEventSubscription : UARDSModel

@property (nonatomic, copy) NSString *customerAwsID;
@property (nonatomic, copy) NSString *custSubscriptionID;
@property (nonatomic, copy) NSString *snsTopicARN;
@property (nonatomic) UARDSEventSubscriptionStatus status;
@property (nonatomic, copy) NSDate *subscriptionCreationTime;
@property (nonatomic) UARDSSourceType sourceType;
@property (nonatomic, copy) NSArray *sourceIdsList;
@property (nonatomic, copy) NSArray *eventCategoriesList;
@property (nonatomic) BOOL enabled;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)sourceIdsListAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)eventCategoriesListAtIndex:(NSUInteger)index;

/**
 * Adds a SourceIdsList to the sourceIdsList property.
 *
 * This will initialise sourceIdsList with an empty mutable array if necessary.
**/
- (void)addSourceIdsList:(NSString *)sourceIdsList;
/**
 * Adds a EventCategoriesList to the eventCategoriesList property.
 *
 * This will initialise eventCategoriesList with an empty mutable array if necessary.
**/
- (void)addEventCategoriesList:(NSString *)eventCategoriesList;

@end
