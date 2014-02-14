//
//  UAEC2InstanceStateChange.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2InstanceStateChange : UAEC2Model

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic) UAEC2InstanceState currentState;
@property (nonatomic) UAEC2InstanceState previousState;

@end
