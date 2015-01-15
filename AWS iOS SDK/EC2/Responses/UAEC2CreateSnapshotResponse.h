//
//  UAEC2CreateSnapshotResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@interface UAEC2CreateSnapshotResponse : UAEC2Response

@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSDate *startTime;
@property (nonatomic, copy) NSString *progress;
@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, strong) NSNumber *volumeSize;
@property (nonatomic, copy) NSString *ownerAlias;
@property (nonatomic) BOOL encrypted;
@property (nonatomic, copy) NSString *kmsKeyID;

@end
