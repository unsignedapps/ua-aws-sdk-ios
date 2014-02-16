//
//  UAEC2InternetGateway.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Attachment, UAEC2Tag;

@interface UAEC2InternetGateway : UAEC2Model

@property (nonatomic, copy) NSString *internetGatewayID;
@property (nonatomic, copy) NSArray *attachments;
@property (nonatomic, copy) NSArray *tags;

@end
