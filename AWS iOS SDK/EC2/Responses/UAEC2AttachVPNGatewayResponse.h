//
//  UAEC2AttachVPNGatewayResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Attachment;

@interface UAEC2AttachVPNGatewayResponse : UAEC2Response

@property (nonatomic, copy) UAEC2Attachment *vpcAttachment;

@end
