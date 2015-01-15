//
//  UAIAMListOpenIDConnectProvidersResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@interface UAIAMListOpenIDConnectProvidersResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *openIDConnectProviderList;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)openIDConnectProviderListAtIndex:(NSUInteger)index;

/**
 * Adds a OpenIDConnectProviderList to the openIDConnectProviderList property.
 *
 * This will initialise openIDConnectProviderList with an empty mutable array if necessary.
**/
- (void)addOpenIDConnectProviderList:(NSString *)openIDConnectProviderList;

@end
