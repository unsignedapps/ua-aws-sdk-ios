//
//  UAEC2DescribeKeyPairsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2KeyPair;

@interface UAEC2DescribeKeyPairsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *keyPairs;

@end
