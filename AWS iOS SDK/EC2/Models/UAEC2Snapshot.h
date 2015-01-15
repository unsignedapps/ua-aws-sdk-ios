//
//  UAEC2Snapshot.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
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
@property (nonatomic) BOOL encrypted;
@property (nonatomic, copy) NSString *kmsKeyID;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;

@end
