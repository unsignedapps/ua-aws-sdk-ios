//
//  UAEC2InstanceStatusEvent.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2InstanceStatusEvent : UAEC2Model

@property (nonatomic) UAEC2InstanceEventCode code;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, strong) NSDate *notBefore;
@property (nonatomic, strong) NSDate *notAfter;

@end
