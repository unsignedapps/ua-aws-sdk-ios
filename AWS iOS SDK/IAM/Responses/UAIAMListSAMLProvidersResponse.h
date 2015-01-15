//
//  UAIAMListSAMLProvidersResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMSAMLProviderList;

@interface UAIAMListSAMLProvidersResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *sAMLProviderList;

/**
 * Retrieves the UAIAMSAMLProviderList at the specified index.
**/
- (UAIAMSAMLProviderList *)sAMLProviderListAtIndex:(NSUInteger)index;

/**
 * Adds a SAMLProviderList to the sAMLProviderList property.
 *
 * This will initialise sAMLProviderList with an empty mutable array if necessary.
**/
- (void)addSAMLProviderList:(UAIAMSAMLProviderList *)sAMLProviderList;

@end
