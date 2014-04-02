//
//  UASNSListEndpointsByPlatformApplicationResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSEndpoint;

@interface UASNSListEndpointsByPlatformApplicationResponse : UASNSResponse

@property (nonatomic, copy) NSArray *endpoints;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UASNSEndpoint at the specified index.
**/
- (UASNSEndpoint *)endpointAtIndex:(NSUInteger)index;

@end
