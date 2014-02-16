//
//  UAEC2DescribeDHCPOptionsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2DHCPOption;

@interface UAEC2DescribeDHCPOptionsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *dhcpOptions;

@end
