//
//  UADDBUpdate.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@class UADDBProvisionedThroughput;

@interface UADDBUpdate : UADDBModel

@property (nonatomic, copy) NSString *indexName;
@property (nonatomic, copy) UADDBProvisionedThroughput *provisionedThroughput;

@end
