//
//  UAIAMGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMGroup : UAIAMModel

@property (nonatomic, copy) NSString *path;
@property (nonatomic, copy) NSString *groupName;
@property (nonatomic, copy) NSString *groupID;
@property (nonatomic, copy) NSString *arn;
@property (nonatomic, copy) NSDate *createDate;

@end
