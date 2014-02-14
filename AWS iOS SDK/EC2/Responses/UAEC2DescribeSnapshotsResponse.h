//
//  UAEC2DescribeSnapshotsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Snapshot;

@interface UAEC2DescribeSnapshotsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *snapshots;

@end
