//
//  UADDBGetItemResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBResponse.h"

@class UADDBConsumedCapacity;

@interface UADDBGetItemResponse : UADDBResponse

@property (nonatomic, copy) NSDictionary *item;
@property (nonatomic, copy) UADDBConsumedCapacity *consumedCapacity;

/**
 * Retrieves the NSDictionary for the specified AttributeName.
**/
- (NSDictionary *)itemForAttributeName:(NSString *)attributeName;

@end
