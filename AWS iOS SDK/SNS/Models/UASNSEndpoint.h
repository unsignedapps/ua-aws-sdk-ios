//
//  UASNSEndpoint.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSModel.h"

@class UASNSEndpointAttributes;

@interface UASNSEndpoint : UASNSModel

@property (nonatomic, copy) NSString *endpointARN;
@property (nonatomic, copy) UASNSEndpointAttributes *attributes;

@end
