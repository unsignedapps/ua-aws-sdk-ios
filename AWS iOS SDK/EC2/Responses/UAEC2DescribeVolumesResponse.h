//
//  UAEC2DescribeVolumesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Volume;

@interface UAEC2DescribeVolumesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *volumes;

@end
