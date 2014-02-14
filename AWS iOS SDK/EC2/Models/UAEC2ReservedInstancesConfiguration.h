//
//  UAEC2ReservedInstancesConfiguration.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2ReservedInstancesConfiguration : UAEC2Model

@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) NSString *platform;
@property (nonatomic, strong) NSNumber *instanceCount;
@property (nonatomic, copy) NSString *instanceType;

@end
