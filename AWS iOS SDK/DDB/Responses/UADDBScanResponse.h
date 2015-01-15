//
//  UADDBScanResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBResponse.h"

@class UADDBConsumedCapacity;

@interface UADDBScanResponse : UADDBResponse

@property (nonatomic, copy) NSArray *items;
@property (nonatomic, strong) NSNumber *count;
@property (nonatomic, strong) NSNumber *scannedCount;
@property (nonatomic, copy) NSDictionary *lastEvaluatedKey;
@property (nonatomic, copy) UADDBConsumedCapacity *consumedCapacity;

/**
 * Retrieves the NSDictionary at the specified index.
**/
- (NSDictionary *)itemAtIndex:(NSUInteger)index;

/**
 * Retrieves the DynamoDB dictionary in lastEvaluatedKey for the specified Attribute Name.
**/
- (NSDictionary *)lastEvaluatedKeyValueForAttributeName:(NSString *)attributeName;

/**
 * Sets the DynamoDB attribute value for the specified attribute name in lastEvaluatedKey property.
 *
 * This will initialise lastEvaluatedKey with an empty mutable dictionary if necessary.
**/
- (void)setLastEvaluatedKeyValue:(id)lastEvaluatedKey forAttributeName:(NSString *)attributeName;

@end
