//
//  UAAWSEBSBlockDevice.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

@import Foundation;

@protocol UAAWSEBSBlockDevice <NSObject>

@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, strong) NSNumber *volumeSize;
@property (nonatomic) BOOL deleteOnTermination;
@property (nonatomic) NSUInteger volumeType;
@property (nonatomic, strong) NSNumber *iops;
@property (nonatomic) BOOL encrypted;

@end
