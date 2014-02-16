//
//  UAEC2DescribeLicensesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2License;

@interface UAEC2DescribeLicensesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *licenses;

@end
