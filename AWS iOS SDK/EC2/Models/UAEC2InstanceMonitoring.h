//
//  UAEC2InstanceMonitoring.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Monitoring;

@interface UAEC2InstanceMonitoring : UAEC2Model

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) UAEC2Monitoring *monitoring;

@end
