//
//  UAEC2InstanceStatusDetails.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2InstanceStatusDetails : UAEC2Model

@property (nonatomic) UAEC2InstanceStatusDetailsName name;
@property (nonatomic) UAEC2InstanceStatusDetailsStatus status;
@property (nonatomic, strong) NSDate *impairedSince;

@end
