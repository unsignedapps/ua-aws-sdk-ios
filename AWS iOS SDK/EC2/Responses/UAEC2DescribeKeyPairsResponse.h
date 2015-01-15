//
//  UAEC2DescribeKeyPairsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2KeyPair;

@interface UAEC2DescribeKeyPairsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *keyPairs;

/**
 * Retrieves the UAEC2KeyPair at the specified index.
**/
- (UAEC2KeyPair *)keyPairAtIndex:(NSUInteger)index;

/**
 * Adds a KeyPair to the keyPairs property.
 *
 * This will initialise keyPairs with an empty mutable array if necessary.
**/
- (void)addKeyPair:(UAEC2KeyPair *)keyPair;

@end
