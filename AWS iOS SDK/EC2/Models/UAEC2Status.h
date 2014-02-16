//
//  UAEC2Status.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2Status : UAEC2Model

@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSDate *updateTime;
@property (nonatomic, copy) NSString *message;

@end
