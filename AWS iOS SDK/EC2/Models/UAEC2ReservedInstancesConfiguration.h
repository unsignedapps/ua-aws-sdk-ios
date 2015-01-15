//
//  UAEC2ReservedInstancesConfiguration.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2ReservedInstancesConfiguration : UAEC2Model

@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic) UAEC2Platform platform;
@property (nonatomic, strong) NSNumber *instanceCount;
@property (nonatomic, copy) NSString *instanceType;

@end
