//
//  UAEC2ReservedInstancesModificationResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2TargetConfiguration;

@interface UAEC2ReservedInstancesModificationResponse : UAEC2Response

@property (nonatomic, copy) NSString *reservedInstancesID;
@property (nonatomic, copy) UAEC2TargetConfiguration *targetConfiguration;

@end
