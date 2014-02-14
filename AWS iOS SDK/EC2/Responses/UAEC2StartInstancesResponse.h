//
//  UAEC2StartInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InstanceStateChange;

@interface UAEC2StartInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *startingInstances;

@end
