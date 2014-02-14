//
//  UAEC2DescribeRegionsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Region;

@interface UAEC2DescribeRegionsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *regions;

@end
