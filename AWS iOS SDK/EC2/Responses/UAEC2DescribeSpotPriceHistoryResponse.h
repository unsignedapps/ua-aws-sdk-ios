//
//  UAEC2DescribeSpotPriceHistoryResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2SpotPriceHistory;

@interface UAEC2DescribeSpotPriceHistoryResponse : UAEC2Response

@property (nonatomic, copy) NSArray *spotPriceHistory;
@property (nonatomic, copy) NSString *nextToken;

@end
