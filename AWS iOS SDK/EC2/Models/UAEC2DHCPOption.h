//
//  UAEC2DHCPOption.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2DHCPConfiguration, UAEC2Tag;

@interface UAEC2DHCPOption : UAEC2Model

@property (nonatomic, copy) NSString *dhcpOptionsID;
@property (nonatomic, copy) NSArray *dhcpConfigurations;
@property (nonatomic, copy) NSArray *tags;

/**
 * Retrieves the UAEC2DHCPConfiguration at the specified index.
**/
- (UAEC2DHCPConfiguration *)dhcpConfigurationAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

@end
