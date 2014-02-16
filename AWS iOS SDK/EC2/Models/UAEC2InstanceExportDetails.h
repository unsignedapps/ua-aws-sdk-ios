//
//  UAEC2InstanceExportDetails.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2InstanceExportDetails : UAEC2Model

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *targetEnvironment;

@end
