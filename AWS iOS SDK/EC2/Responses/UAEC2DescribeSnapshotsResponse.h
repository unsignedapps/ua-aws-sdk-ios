//
//  UAEC2DescribeSnapshotsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Snapshot;

@interface UAEC2DescribeSnapshotsResponse : UAEC2Response

@property (nonatomic, copy) NSArray *snapshots;

/**
 * Retrieves the UAEC2Snapshot at the specified index.
**/
- (UAEC2Snapshot *)snapshotAtIndex:(NSUInteger)index;

@end
