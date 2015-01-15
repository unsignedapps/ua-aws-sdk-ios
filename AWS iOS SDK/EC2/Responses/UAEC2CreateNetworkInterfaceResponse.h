//
//  UAEC2CreateNetworkInterfaceResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2NetworkInterface;

@interface UAEC2CreateNetworkInterfaceResponse : UAEC2Response

@property (nonatomic, copy) UAEC2NetworkInterface *networkInterface;

@end
