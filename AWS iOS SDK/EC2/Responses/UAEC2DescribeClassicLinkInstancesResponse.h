//
//  UAEC2DescribeClassicLinkInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ClassicLinkInstance;

@interface UAEC2DescribeClassicLinkInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *instances;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAEC2ClassicLinkInstance at the specified index.
**/
- (UAEC2ClassicLinkInstance *)instanceAtIndex:(NSUInteger)index;

/**
 * Adds a Instance to the instances property.
 *
 * This will initialise instances with an empty mutable array if necessary.
**/
- (void)addInstance:(UAEC2ClassicLinkInstance *)instance;

@end
