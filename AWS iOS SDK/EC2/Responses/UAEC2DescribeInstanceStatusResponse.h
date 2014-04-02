//
//  UAEC2DescribeInstanceStatusResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InstanceStatus;

@interface UAEC2DescribeInstanceStatusResponse : UAEC2Response

@property (nonatomic, copy) NSArray *instanceStatuses;
@property (nonatomic, copy) NSString *nextToken;

/**
 * Retrieves the UAEC2InstanceStatus at the specified index.
**/
- (UAEC2InstanceStatus *)instanceStatusAtIndex:(NSUInteger)index;

@end
