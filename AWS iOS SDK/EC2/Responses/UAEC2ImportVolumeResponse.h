//
//  UAEC2ImportVolumeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ConversionTask;

@interface UAEC2ImportVolumeResponse : UAEC2Response

@property (nonatomic, copy) UAEC2ConversionTask *conversionTask;

@end
