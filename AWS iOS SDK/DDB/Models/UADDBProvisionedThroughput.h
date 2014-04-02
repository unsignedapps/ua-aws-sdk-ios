//
//  UADDBProvisionedThroughput.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBProvisionedThroughput : UADDBModel

@property (nonatomic, strong) NSNumber *readCapacityUnits;
@property (nonatomic, strong) NSNumber *writeCapacityUnits;

@end
