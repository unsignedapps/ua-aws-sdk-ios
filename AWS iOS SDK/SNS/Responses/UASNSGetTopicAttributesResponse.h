//
//  UASNSGetTopicAttributesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSTopicAttributes;

@interface UASNSGetTopicAttributesResponse : UASNSResponse

@property (nonatomic, copy) UASNSTopicAttributes *attributes;

@end
