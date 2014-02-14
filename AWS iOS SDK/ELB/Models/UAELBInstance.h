//
//  UAELBInstance.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBInstance : UAELBModel

@property (nonatomic, copy) NSString *instanceID;

- (id)initWithInstanceID:(NSString *)instanceID;

@end
