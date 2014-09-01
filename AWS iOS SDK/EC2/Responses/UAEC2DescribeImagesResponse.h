//
//  UAEC2DescribeImagesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Image;

@interface UAEC2DescribeImagesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *images;

/**
 * Retrieves the UAEC2Image at the specified index.
**/
- (UAEC2Image *)imageAtIndex:(NSUInteger)index;

/**
 * Adds a Image to the images property.
 *
 * This will initialise images with an empty mutable array if necessary.
**/
- (void)addImage:(UAEC2Image *)image;

@end
