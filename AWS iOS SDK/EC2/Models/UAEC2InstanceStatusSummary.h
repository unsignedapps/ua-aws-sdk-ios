//
//  UAEC2InstanceStatusSummary.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2InstanceStatusDetails;

@interface UAEC2InstanceStatusSummary : UAEC2Model

@property (nonatomic) UAEC2InstanceStatusValue status;
@property (nonatomic, copy) NSArray *details;

@end
