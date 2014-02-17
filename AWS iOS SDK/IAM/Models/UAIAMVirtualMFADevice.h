//
//  UAIAMVirtualMFADevice.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@class UAIAMUser;

@interface UAIAMVirtualMFADevice : UAIAMModel

@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic, copy) NSString *base32StringSeed;
@property (nonatomic, copy) NSString *qRCodePNG;
@property (nonatomic, copy) UAIAMUser *user;
@property (nonatomic, copy) NSDate *enableDate;

@end
