//
//  UAKMSAlias.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSModel.h"

@interface UAKMSAlias : UAKMSModel

@property (nonatomic, copy) NSString *aliasName;
@property (nonatomic, copy) NSString *aliasARN;
@property (nonatomic, copy) NSString *targetKeyID;

@end
