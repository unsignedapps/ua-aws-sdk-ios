//
//  UAEC2StopInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InstanceStateChange;

@interface UAEC2StopInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *stoppingInstances;

@end
