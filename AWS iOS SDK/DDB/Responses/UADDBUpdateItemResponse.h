//
//  UADDBUpdateItemResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBResponse.h"

@class UADDBConsumedCapacity, UADDBItemCollectionMetrics;

@interface UADDBUpdateItemResponse : UADDBResponse

@property (nonatomic, copy) NSDictionary *attributes;
@property (nonatomic, copy) UADDBConsumedCapacity *consumedCapacity;
@property (nonatomic, copy) UADDBItemCollectionMetrics *itemCollectionMetrics;

/**
 * Retrieves the NSDictionary for the specified AttributeName.
**/
- (NSDictionary *)attributeForAttributeName:(NSString *)attributeName;

@end
