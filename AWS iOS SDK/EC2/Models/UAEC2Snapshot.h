//
//  UAEC2Snapshot.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Tag;

@interface UAEC2Snapshot : UAEC2Model

@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic) UAEC2SnapshotState state;
@property (nonatomic, copy) NSDate *startTime;
@property (nonatomic, copy) NSString *progress;
@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, strong) NSNumber *volumeSize;
@property (nonatomic, copy) NSString *ownerAlias;
@property (nonatomic, copy) NSArray *tags;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

@end
