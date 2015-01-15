//
//  UAKMSListKeysResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@class UAKMSKey;

@interface UAKMSListKeysResponse : UAKMSResponse

@property (nonatomic, copy) NSArray *keys;
@property (nonatomic, copy) NSString *nextMarker;
@property (nonatomic) BOOL truncated;

/**
 * Retrieves the UAKMSKey at the specified index.
**/
- (UAKMSKey *)keyAtIndex:(NSUInteger)index;

/**
 * Adds a Key to the keys property.
 *
 * This will initialise keys with an empty mutable array if necessary.
**/
- (void)addKey:(UAKMSKey *)key;

@end
