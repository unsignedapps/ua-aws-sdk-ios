//
//  UAEC2PlacementGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2PlacementGroup : UAEC2Model

@property (nonatomic, copy) NSString *groupName;
@property (nonatomic) UAEC2PlacementGroupStrategy strategy;
@property (nonatomic) UAEC2PlacementGroupState state;

@end
