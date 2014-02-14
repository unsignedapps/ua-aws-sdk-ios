//
//  UAASTag.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"

@interface UAASTag : UAASModel

@property (nonatomic, copy) NSString *resourceID;
@property (nonatomic, copy) NSString *resourceType;
@property (nonatomic, copy) NSString *key;
@property (nonatomic, copy) NSString *value;
@property (nonatomic) BOOL propagateAtLaunch;

@end
