//
//  UARDSDescribeDBLogFile.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSDescribeDBLogFile : UARDSModel

@property (nonatomic, copy) NSString *logFileName;
@property (nonatomic, strong) NSNumber *lastWritten;
@property (nonatomic, strong) NSNumber *size;

@end
