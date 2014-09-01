//
//  UADDBItemCollectionMetrics.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBItemCollectionMetrics : UADDBModel

@property (nonatomic, copy) NSDictionary *itemCollectionKey;
@property (nonatomic, copy) NSArray *sizeEstimateRangeGB;

/**
 * Retrieves the DynamoDB dictionary in itemCollectionKey for the specified Attribute Name.
**/
- (NSDictionary *)itemCollectionKeyValueForAttributeName:(NSString *)attributeName;

/**
 * Retrieves the NSNumber at the specified index.
**/
- (NSNumber *)sizeEstimateRangeGBAtIndex:(NSUInteger)index;

/**
 * Adds a SizeEstimateRangeGB to the sizeEstimateRangeGB property.
 *
 * This will initialise sizeEstimateRangeGB with an empty mutable array if necessary.
**/
- (void)addSizeEstimateRangeGB:(NSNumber *)sizeEstimateRangeGB;

/**
 * Sets the DynamoDB attribute value for the specified attribute name in itemCollectionKey property.
 *
 * This will initialise itemCollectionKey with an empty mutable dictionary if necessary.
**/
- (void)setItemCollectionKeyValue:(id)itemCollectionKey forAttributeName:(NSString *)attributeName;

@end
