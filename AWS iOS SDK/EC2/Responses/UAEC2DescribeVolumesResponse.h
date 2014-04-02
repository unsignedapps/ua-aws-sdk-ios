//
//  UAEC2DescribeVolumesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Volume;

@interface UAEC2DescribeVolumesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *volumes;

/**
 * Retrieves the UAEC2Volume at the specified index.
**/
- (UAEC2Volume *)volumeAtIndex:(NSUInteger)index;

@end
