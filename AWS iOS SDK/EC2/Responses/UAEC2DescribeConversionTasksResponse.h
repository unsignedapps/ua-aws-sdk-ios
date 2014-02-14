//
//  UAEC2DescribeConversionTasksResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ConversionTask;

@interface UAEC2DescribeConversionTasksResponse : UAEC2Response

@property (nonatomic, copy) NSArray *conversionTasks;

@end
