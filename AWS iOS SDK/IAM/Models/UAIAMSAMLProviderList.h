//
//  UAIAMSAMLProviderList.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMSAMLProviderList : UAIAMModel

@property (nonatomic, copy) NSString *arn;
@property (nonatomic, copy) NSString *validUntil;
@property (nonatomic, copy) NSDate *createDate;

@end
