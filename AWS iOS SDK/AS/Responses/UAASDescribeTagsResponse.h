//
//  UAASDescribeTagsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASTag;

@interface UAASDescribeTagsResponse : UAASResponse

@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAASTag at the specified index.
**/
- (UAASTag *)tagAtIndex:(NSUInteger)index;

/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAASTag *)tag;

@end
