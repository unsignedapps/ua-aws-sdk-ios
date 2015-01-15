//
//  UAKMSKey.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSModel.h"

@interface UAKMSKey : UAKMSModel

@property (nonatomic, copy) NSString *keyID;
@property (nonatomic, copy) NSString *keyARN;

@end
