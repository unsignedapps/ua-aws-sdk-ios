//
//  UAEC2VolumeStatusAction.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2VolumeStatusAction : UAEC2Model

@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSString *eventType;
@property (nonatomic, copy) NSString *eventID;

@end
