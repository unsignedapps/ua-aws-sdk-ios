//
//  UAEC2DescribeAccountAttributesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2AccountAttribute;

@interface UAEC2DescribeAccountAttributesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *accountAttributes;

@end
