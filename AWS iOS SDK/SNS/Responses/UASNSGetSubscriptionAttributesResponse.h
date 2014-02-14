//
//  UASNSGetSubscriptionAttributesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSSubscriptionAttributes;

@interface UASNSGetSubscriptionAttributesResponse : UASNSResponse

@property (nonatomic, copy) UASNSSubscriptionAttributes *attributes;

@end
