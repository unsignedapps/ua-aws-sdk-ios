//
//  UADDBKeySchema.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBKeySchema : UADDBModel

@property (nonatomic, copy) NSString *attributeName;
@property (nonatomic) UADDBKeyType keyType;

@end
