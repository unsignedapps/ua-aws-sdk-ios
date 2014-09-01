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

/**
 * Retrieves the UAIAMAccessKeyMetadata at the specified index.
**/
- (UAIAMAccessKeyMetadata *)accessKeyMetadataAtIndex:(NSUInteger)index;

/**
 * Adds a AccessKeyMetadata to the accessKeyMetadata property.
 *
 * This will initialise accessKeyMetadata with an empty mutable array if necessary.
**/
- (void)addAccessKeyMetadata:(UAIAMAccessKeyMetadata *)accessKeyMetadata;

@end
