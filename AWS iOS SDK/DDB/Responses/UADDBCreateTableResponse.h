//
//  UADDBCreateTableResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBResponse.h"

@class UADDBTableDescription;

@interface UADDBCreateTableResponse : UADDBResponse

@property (nonatomic, copy) UADDBTableDescription *tableDescription;

@end
