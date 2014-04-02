//
//  UAEC2MonitorInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InstanceMonitoring;

@interface UAEC2MonitorInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *instanceMonitorings;

/**
 * Retrieves the UAEC2InstanceMonitoring at the specified index.
**/
- (UAEC2InstanceMonitoring *)instanceMonitoringAtIndex:(NSUInteger)index;

@end
