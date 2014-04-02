//
//  UADDBGlobalSecondaryIndexUpdate.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@class UADDBUpdate;

@interface UADDBGlobalSecondaryIndexUpdate : UADDBModel

@property (nonatomic, copy) UADDBUpdate *update;

- (id)initWithUpdate:(UADDBUpdate *)update;

@end
