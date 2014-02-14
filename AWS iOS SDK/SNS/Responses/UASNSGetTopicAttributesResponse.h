//
//  UASNSGetTopicAttributesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSTopicAttributes;

@interface UASNSGetTopicAttributesResponse : UASNSResponse

@property (nonatomic, copy) UASNSTopicAttributes *attributes;

@end
