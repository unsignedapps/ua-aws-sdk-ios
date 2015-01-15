//
//  UAELBTagName.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBTagName : UAELBModel

@property (nonatomic, copy) NSString *key;

- (id)initWithKey:(NSString *)key;

@end
