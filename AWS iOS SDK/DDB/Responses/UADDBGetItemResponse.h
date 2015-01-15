//
//  UADDBGetItemResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBResponse.h"

@class UADDBConsumedCapacity;

@interface UADDBGetItemResponse : UADDBResponse

@property (nonatomic, copy) NSDictionary *item;
@property (nonatomic, copy) UADDBConsumedCapacity *consumedCapacity;

/**
 * Retrieves the DynamoDB dictionary in item for the specified Attribute Name.
**/
- (NSDictionary *)itemValueForAttributeName:(NSString *)attributeName;

/**
 * Sets the DynamoDB attribute value for the specified attribute name in item property.
 *
 * This will initialise item with an empty mutable dictionary if necessary.
**/
- (void)setItemValue:(id)item forAttributeName:(NSString *)attributeName;

@end
