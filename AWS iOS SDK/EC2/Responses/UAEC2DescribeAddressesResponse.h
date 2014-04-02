//
//  UAEC2DescribeAddressesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Address;

@interface UAEC2DescribeAddressesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *addresses;

/**
 * Retrieves the UAEC2Address at the specified index.
**/
- (UAEC2Address *)addressAtIndex:(NSUInteger)index;

@end
