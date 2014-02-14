//
//  UASNSEndpoint.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSModel.h"

@class UASNSEndpointAttributes;

@interface UASNSEndpoint : UASNSModel

@property (nonatomic, copy) NSString *endpointARN;
@property (nonatomic, copy) UASNSEndpointAttributes *attributes;

@end
