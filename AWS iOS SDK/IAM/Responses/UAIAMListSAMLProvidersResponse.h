//
//  UAIAMListSAMLProvidersResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

@end
