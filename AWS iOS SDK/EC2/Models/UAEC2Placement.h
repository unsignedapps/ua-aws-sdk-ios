//
//  UAEC2Placement.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2Placement : UAEC2Model

@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) NSString *groupName;
@property (nonatomic, copy) NSString *tenancy;

@end
