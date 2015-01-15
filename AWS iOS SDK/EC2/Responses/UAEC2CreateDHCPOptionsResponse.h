//
//  UAEC2CreateDHCPOptionsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2DHCPOptions;

@interface UAEC2CreateDHCPOptionsResponse : UAEC2Response

@property (nonatomic, copy) UAEC2DHCPOptions *dhcpOptions;

@end
