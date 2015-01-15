//
//  UAEC2DHCPOption.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
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

/**
 * Adds a DHCPConfiguration to the dhcpConfigurations property.
 *
 * This will initialise dhcpConfigurations with an empty mutable array if necessary.
**/
- (void)addDHCPConfiguration:(UAEC2DHCPConfiguration *)dHCPConfiguration;
/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;

@end
