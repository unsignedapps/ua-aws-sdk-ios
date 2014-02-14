//
//  UAASDescribeTagsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResponse.h"

@class UAASTag;

@interface UAASDescribeTagsResponse : UAASResponse

@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSString *nextToken;

@end
