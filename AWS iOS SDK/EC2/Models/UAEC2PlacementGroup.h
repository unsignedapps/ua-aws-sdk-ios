//
//  UAEC2PlacementGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2PlacementGroup : UAEC2Model

@property (nonatomic, copy) NSString *groupName;
@property (nonatomic, copy) NSString *strategy;
@property (nonatomic, copy) NSString *state;

@end
