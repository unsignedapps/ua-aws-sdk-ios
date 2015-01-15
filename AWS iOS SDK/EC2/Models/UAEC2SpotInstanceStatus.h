//
//  UAEC2SpotInstanceStatus.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2SpotInstanceStatus : UAEC2Model

@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSDate *updateTime;
@property (nonatomic, copy) NSString *message;

@end
