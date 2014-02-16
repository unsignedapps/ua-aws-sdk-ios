//
//  UAEC2Attachment.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2Attachment : UAEC2Model

@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic) UAEC2AttachmentState state;

@end
