//
//  UAEC2InstanceNetworkInterfaceAttachment.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2InstanceNetworkInterfaceAttachment : UAEC2Model

@property (nonatomic, copy) NSString *attachmentID;
@property (nonatomic, strong) NSNumber *deviceIndex;
@property (nonatomic) UAEC2NetworkInterfaceAttachmentStatus status;
@property (nonatomic, copy) NSDate *attachTime;
@property (nonatomic) BOOL deleteOnTermination;

@end
