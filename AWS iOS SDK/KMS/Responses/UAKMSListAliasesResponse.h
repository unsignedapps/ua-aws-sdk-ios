//
//  UAKMSListAliasesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@class UAKMSAlias;

@interface UAKMSListAliasesResponse : UAKMSResponse

@property (nonatomic, copy) NSArray *aliases;
@property (nonatomic, copy) NSString *nextMarker;
@property (nonatomic) BOOL truncated;

/**
 * Retrieves the UAKMSAlias at the specified index.
**/
- (UAKMSAlias *)aliasAtIndex:(NSUInteger)index;

/**
 * Adds a Alias to the aliases property.
 *
 * This will initialise aliases with an empty mutable array if necessary.
**/
- (void)addAlias:(UAKMSAlias *)alias;

@end
