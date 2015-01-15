//
//  UAKMSListGrantsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@class UAKMSGrant;

@interface UAKMSListGrantsResponse : UAKMSResponse

@property (nonatomic, copy) NSArray *grants;
@property (nonatomic, copy) NSString *nextMarker;
@property (nonatomic) BOOL truncated;

/**
 * Retrieves the UAKMSGrant at the specified index.
**/
- (UAKMSGrant *)grantAtIndex:(NSUInteger)index;

/**
 * Adds a Grant to the grants property.
 *
 * This will initialise grants with an empty mutable array if necessary.
**/
- (void)addGrant:(UAKMSGrant *)grant;

@end
