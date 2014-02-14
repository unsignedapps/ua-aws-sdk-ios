//
//  UAEC2DescribeInstanceStatusResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2InstanceStatus;

@interface UAEC2DescribeInstanceStatusResponse : UAEC2Response

@property (nonatomic, copy) NSArray *instanceStatuses;
@property (nonatomic, copy) NSString *nextToken;

@end
