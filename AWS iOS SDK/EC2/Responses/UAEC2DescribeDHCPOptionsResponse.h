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

/**
 * Retrieves the UAEC2DHCPOption at the specified index.
**/
- (UAEC2DHCPOption *)dhcpOptionAtIndex:(NSUInteger)index;

@end
