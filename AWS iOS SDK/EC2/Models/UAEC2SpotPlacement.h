//
//  UAEC2SpotPlacement.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2SpotPlacement : UAEC2Model

@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) NSString *groupName;

@end
