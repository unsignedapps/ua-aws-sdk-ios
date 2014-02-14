//
//  UASNSListTopicsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSTopic;

@interface UASNSListTopicsResponse : UASNSResponse

@property (nonatomic, copy) NSArray *topics;
@property (nonatomic, copy) NSString *nextToken;

@end
