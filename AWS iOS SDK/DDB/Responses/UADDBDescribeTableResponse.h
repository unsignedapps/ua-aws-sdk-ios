//
//  UADDBDescribeTableResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBResponse.h"

@class UADDBTableDescription;

@interface UADDBDescribeTableResponse : UADDBResponse

@property (nonatomic, copy) UADDBTableDescription *table;

@end
