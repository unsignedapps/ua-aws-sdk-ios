//
//  UAASSuspendedProcess.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASSuspendedProcess : UAASModel

@property (nonatomic, copy) NSString *processName;
@property (nonatomic, copy) NSString *suspensionReason;

@end
