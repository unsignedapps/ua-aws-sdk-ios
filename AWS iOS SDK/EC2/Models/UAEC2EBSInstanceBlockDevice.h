//
//  UAEC2EBSInstanceBlockDevice.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2EBSInstanceBlockDevice : UAEC2Model

@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic) UAEC2AttachmentState status;
@property (nonatomic, copy) NSDate *attachTime;
@property (nonatomic) BOOL deleteOnTermination;

@end
