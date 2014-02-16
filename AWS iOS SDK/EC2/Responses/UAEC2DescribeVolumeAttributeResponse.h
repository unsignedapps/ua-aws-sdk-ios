//
//  UAEC2DescribeVolumeAttributeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2AutoEnableIO, UAEC2ProductCode;

@interface UAEC2DescribeVolumeAttributeResponse : UAEC2Response

@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic, copy) UAEC2AutoEnableIO *autoEnableIO;
@property (nonatomic, copy) NSArray *productCodes;

@end
