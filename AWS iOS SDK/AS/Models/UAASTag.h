//
//  UAASTag.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASModel.h"
#import "UAAWSTag.h"

@interface UAASTag : UAASModel <UAAWSTag>

@property (nonatomic, copy) NSString *resourceID;
@property (nonatomic) UAASTagResourceType resourceType;
@property (nonatomic, copy) NSString *key;
@property (nonatomic, copy) NSString *value;
@property (nonatomic) BOOL propagateAtLaunch;

@end
