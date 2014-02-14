//
//  UAEC2SpotInstanceStateFault.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2SpotInstanceStateFault : UAEC2Model

@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;

@end
