//
//  UAEC2DescribeAccountAttributesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2AccountAttribute;

@interface UAEC2DescribeAccountAttributesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *accountAttributes;

/**
 * Retrieves the UAEC2AccountAttribute at the specified index.
**/
- (UAEC2AccountAttribute *)accountAttributeAtIndex:(NSUInteger)index;

@end
