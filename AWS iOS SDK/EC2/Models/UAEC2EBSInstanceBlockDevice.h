//
//  UAEC2EBSInstanceBlockDevice.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2EBSInstanceBlockDevice : UAEC2Model

@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSDate *attachTime;
@property (nonatomic) BOOL deleteOnTermination;

@end
