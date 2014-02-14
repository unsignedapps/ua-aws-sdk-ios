//
//  UAEC2UnmonitorInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InstanceMonitoring;

@interface UAEC2UnmonitorInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *instanceMonitorings;

@end
