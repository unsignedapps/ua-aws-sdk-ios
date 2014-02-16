//
//  UAEC2DHCPOptions.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2DHCPConfiguration, UAEC2Tag;

@interface UAEC2DHCPOptions : UAEC2Model

@property (nonatomic, copy) NSString *dhcpOptionsID;
@property (nonatomic, copy) NSArray *dhcpConfigurations;
@property (nonatomic, copy) NSArray *tags;

@end
