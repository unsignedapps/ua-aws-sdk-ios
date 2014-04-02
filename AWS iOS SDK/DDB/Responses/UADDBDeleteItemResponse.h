//
//  UADDBDeleteItemResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBResponse.h"

@class UADDBConsumedCapacity, UADDBItemCollectionMetric;

@interface UADDBDeleteItemResponse : UADDBResponse

@property (nonatomic, copy) NSDictionary *attributes;
@property (nonatomic, copy) UADDBConsumedCapacity *consumedCapacity;
@property (nonatomic, copy) UADDBItemCollectionMetric *itemCollectionMetrics;

/**
 * Retrieves the DynamoDB dictionary in attributes for the specified Attribute Name.
**/
- (NSDictionary *)attributeValueForAttributeName:(NSString *)attributeName;

@end
