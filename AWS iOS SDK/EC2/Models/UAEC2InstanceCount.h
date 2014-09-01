//
//  UAEC2InstanceCount.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2InstanceCount : UAEC2Model

@property (nonatomic) UAEC2InstanceCountsState state;
@property (nonatomic, strong) NSNumber *instanceCount;

@end
