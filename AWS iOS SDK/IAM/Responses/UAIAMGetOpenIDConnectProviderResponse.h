//
//  UAIAMGetOpenIDConnectProviderResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@interface UAIAMGetOpenIDConnectProviderResponse : UAIAMResponse

@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSArray *clientIDList;
@property (nonatomic, copy) NSArray *thumbprintList;
@property (nonatomic, copy) NSDate *createDate;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)clientIDListAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)thumbprintListAtIndex:(NSUInteger)index;

/**
 * Adds a ClientIDList to the clientIDList property.
 *
 * This will initialise clientIDList with an empty mutable array if necessary.
**/
- (void)addClientIDList:(NSString *)clientIDList;
/**
 * Adds a ThumbprintList to the thumbprintList property.
 *
 * This will initialise thumbprintList with an empty mutable array if necessary.
**/
- (void)addThumbprintList:(NSString *)thumbprintList;

@end
