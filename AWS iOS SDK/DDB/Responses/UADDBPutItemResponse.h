//
//  UADDBPutItemResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBResponse.h"

@class UADDBConsumedCapacity, UADDBItemCollectionMetrics;

@interface UADDBPutItemResponse : UADDBResponse

@property (nonatomic, copy) NSDictionary *attributes;
@property (nonatomic, copy) UADDBConsumedCapacity *consumedCapacity;
@property (nonatomic, copy) UADDBItemCollectionMetrics *itemCollectionMetrics;

/**
 * Retrieves the DynamoDB dictionary in attributes for the specified Attribute Name.
**/
- (NSDictionary *)attributeValueForAttributeName:(NSString *)attributeName;

/**
 * Sets the DynamoDB attribute value for the specified attribute name in attributes property.
 *
 * This will initialise attributes with an empty mutable dictionary if necessary.
**/
- (void)setAttributeValue:(id)attribute forAttributeName:(NSString *)attributeName;

@end
