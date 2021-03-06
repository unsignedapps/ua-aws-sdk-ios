//
//  UAEC2VolumeStatusEvent.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2VolumeStatusEvent : UAEC2Model

@property (nonatomic, copy) NSString *eventType;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, strong) NSDate *notBefore;
@property (nonatomic, strong) NSDate *notAfter;
@property (nonatomic, copy) NSString *eventID;

@end
