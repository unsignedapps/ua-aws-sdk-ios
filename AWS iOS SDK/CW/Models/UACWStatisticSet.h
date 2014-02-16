//
//  UACWStatisticSet.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWModel.h"

@interface UACWStatisticSet : UACWModel

@property (nonatomic, strong) NSNumber *sampleCount;
@property (nonatomic, strong) NSNumber *sum;
@property (nonatomic, strong) NSNumber *minimum;
@property (nonatomic, strong) NSNumber *maximum;

@end
