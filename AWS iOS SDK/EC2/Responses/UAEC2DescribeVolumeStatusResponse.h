//
//  UAEC2DescribeVolumeStatusResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2VolumeStatus;

@interface UAEC2DescribeVolumeStatusResponse : UAEC2Response

@property (nonatomic, copy) NSArray *volumeStatuses;
@property (nonatomic, copy) NSString *nextToken;

@end
