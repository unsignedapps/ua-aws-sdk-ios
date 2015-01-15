//
//  UADDBProvisionedThroughputDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBProvisionedThroughputDescription : UADDBModel

@property (nonatomic, strong) NSDate *lastIncreaseDateTime;
@property (nonatomic, strong) NSDate *lastDecreaseDateTime;
@property (nonatomic, strong) NSNumber *numberOfDecreasesToday;
@property (nonatomic, strong) NSNumber *readCapacityUnits;
@property (nonatomic, strong) NSNumber *writeCapacityUnits;

@end
