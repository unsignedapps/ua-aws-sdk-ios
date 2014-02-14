//
//  UAEC2NetworkInterfaceAttachment.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2NetworkInterfaceAttachment : UAEC2Model

@property (nonatomic, copy) NSString *attachmentID;
@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *instanceOwnerID;
@property (nonatomic, strong) NSNumber *deviceIndex;
@property (nonatomic) UAEC2NetworkInterfaceAttachmentStatus status;
@property (nonatomic, copy) NSDate *attachTime;
@property (nonatomic) BOOL deleteOnTermination;

@end
