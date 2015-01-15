//
//  UAIAMMFADevice.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMMFADevice : UAIAMModel

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic, copy) NSDate *enableDate;

@end
