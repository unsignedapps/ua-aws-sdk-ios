//
//  UAEC2ImportInstanceResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ConversionTask;

@interface UAEC2ImportInstanceResponse : UAEC2Response

@property (nonatomic, copy) UAEC2ConversionTask *conversionTask;

@end
