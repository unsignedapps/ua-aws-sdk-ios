//
//  UAEC2NetworkInterfaceAttachmentSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2NetworkInterfaceAttachmentSpecification : UAEC2Model

@property (nonatomic, copy) NSString *attachmentID;
@property (nonatomic) BOOL deleteOnTermination;

@end
