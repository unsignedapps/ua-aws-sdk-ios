//
//  UAELBTag.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"
#import "UAAWSTag.h"

@interface UAELBTag : UAELBModel <UAAWSTag>

@property (nonatomic, copy) NSString *key;
@property (nonatomic, copy) NSString *value;

@end
