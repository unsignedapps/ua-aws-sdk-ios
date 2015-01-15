//
//  UAEC2TargetConfiguration.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2TargetConfiguration : UAEC2Model

@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) NSString *platform;
@property (nonatomic, strong) NSNumber *instanceCount;
@property (nonatomic, copy) NSString *instanceType;

@end
