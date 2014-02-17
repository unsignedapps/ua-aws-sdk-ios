//
//  UAIAMListAccessKeysResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMAccessKeyMetadata;

@interface UAIAMListAccessKeysResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *accessKeyMetadata;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

@end
