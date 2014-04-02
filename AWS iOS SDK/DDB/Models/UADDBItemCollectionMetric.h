//
//  UADDBItemCollectionMetric.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBItemCollectionMetric : UADDBModel

@property (nonatomic, copy) NSDictionary *itemCollectionKey;
@property (nonatomic, copy) NSArray *sizeEstimateRangeGB;

/**
 * Retrieves the NSDictionary for the specified AttributeName.
**/
- (NSDictionary *)itemCollectionKeyForAttributeName:(NSString *)attributeName;

/**
 * Retrieves the NSNumber at the specified index.
**/
- (NSNumber *)sizeEstimateRangeGBAtIndex:(NSUInteger)index;

@end
