//
//  UAEC2DescribeTagsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2TagDescription;

@interface UAEC2DescribeTagsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSString *nextToken;

@end
