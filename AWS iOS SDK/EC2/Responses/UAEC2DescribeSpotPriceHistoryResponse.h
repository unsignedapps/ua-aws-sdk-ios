//
//  UAEC2DescribeSpotPriceHistoryResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2SpotPriceHistory;

@interface UAEC2DescribeSpotPriceHistoryResponse : UAEC2Response

@property (nonatomic, copy) NSArray *spotPriceHistory;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAEC2SpotPriceHistory at the specified index.
**/
- (UAEC2SpotPriceHistory *)spotPriceHistoryAtIndex:(NSUInteger)index;

/**
 * Adds a SpotPriceHistory to the spotPriceHistory property.
 *
 * This will initialise spotPriceHistory with an empty mutable array if necessary.
**/
- (void)addSpotPriceHistory:(UAEC2SpotPriceHistory *)spotPriceHistory;

@end
