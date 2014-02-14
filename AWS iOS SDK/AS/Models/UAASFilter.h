//
//  UAASFilter.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASFilter : UAASModel

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSMutableArray *values;

@end
