//
//  UAEC2LicenseCapacity.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2LicenseCapacity : UAEC2Model

@property (nonatomic, strong) NSNumber *capacity;
@property (nonatomic, strong) NSNumber *instanceCapacity;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSDate *earliestAllowedDeactivationTime;

@end
