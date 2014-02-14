//
//  UAEC2CreateVPCResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VPC;

@interface UAEC2CreateVPCResponse : UAEC2Response

@property (nonatomic, copy) UAEC2VPC *vpc;

@end
