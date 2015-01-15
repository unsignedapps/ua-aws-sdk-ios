//
//  UASNSGetPlatformApplicationAttributesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSPlatformApplicationAttributes;

@interface UASNSGetPlatformApplicationAttributesResponse : UASNSResponse

@property (nonatomic, copy) UASNSPlatformApplicationAttributes *attributes;

@end
