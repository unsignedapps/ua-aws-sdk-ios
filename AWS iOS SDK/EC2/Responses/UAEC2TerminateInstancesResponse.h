//
//  UAEC2TerminateInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InstanceStateChange;

@interface UAEC2TerminateInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *terminatingInstances;

@end
