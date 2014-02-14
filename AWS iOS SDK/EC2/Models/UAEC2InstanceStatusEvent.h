//
//  UAEC2InstanceStatusEvent.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2InstanceStatusEvent : UAEC2Model

@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSString *notBefore;
@property (nonatomic, copy) NSString *notAfter;

@end
