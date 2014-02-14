//
//  UAELBBackendServerDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBBackendServerDescription : UAELBModel

@property (nonatomic, strong) NSNumber *instancePort;
@property (nonatomic, copy) NSArray *policyNames;

@end
