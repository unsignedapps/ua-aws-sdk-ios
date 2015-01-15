//
//  UAEC2DescribeNetworkACLsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2NetworkACL;

@interface UAEC2DescribeNetworkACLsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *networkACLs;

/**
 * Retrieves the UAEC2NetworkACL at the specified index.
**/
- (UAEC2NetworkACL *)networkACLAtIndex:(NSUInteger)index;

/**
 * Adds a NetworkACL to the networkACLs property.
 *
 * This will initialise networkACLs with an empty mutable array if necessary.
**/
- (void)addNetworkACL:(UAEC2NetworkACL *)networkACL;

@end
