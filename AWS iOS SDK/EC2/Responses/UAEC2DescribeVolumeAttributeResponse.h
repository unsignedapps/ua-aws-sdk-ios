//
//  UAEC2DescribeVolumeAttributeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ProductCode;

@interface UAEC2DescribeVolumeAttributeResponse : UAEC2Response

@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic) BOOL autoEnableIO;
@property (nonatomic, copy) NSArray *productCodes;

/**
 * Retrieves the UAEC2ProductCode at the specified index.
**/
- (UAEC2ProductCode *)productCodeAtIndex:(NSUInteger)index;

@end
