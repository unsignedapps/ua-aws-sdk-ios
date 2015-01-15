//
//  UAKMSDescribeKeyResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@class UAKMSKeyMetadata;

@interface UAKMSDescribeKeyResponse : UAKMSResponse

@property (nonatomic, copy) UAKMSKeyMetadata *keyMetadata;

@end
