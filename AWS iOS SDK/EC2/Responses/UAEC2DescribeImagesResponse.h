//
//  UAEC2DescribeImagesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Image;

@interface UAEC2DescribeImagesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *images;

@end
