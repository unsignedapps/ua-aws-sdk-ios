//
//  UASNSGetEndpointAttributesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSEndpointAttributes;

@interface UASNSGetEndpointAttributesResponse : UASNSResponse

@property (nonatomic, copy) UASNSEndpointAttributes *attributes;

@end
