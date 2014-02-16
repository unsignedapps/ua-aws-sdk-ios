//
//  UAELBInstance.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBInstance : UAELBModel

@property (nonatomic, copy) NSString *instanceID;

- (id)initWithInstanceID:(NSString *)instanceID;

@end
