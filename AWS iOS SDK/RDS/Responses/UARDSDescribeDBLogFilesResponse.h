//
//  UARDSDescribeDBLogFilesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSResponse.h"

@class UARDSDescribeDBLogFile;

@interface UARDSDescribeDBLogFilesResponse : UARDSResponse

@property (nonatomic, copy) NSArray *describeDBLogFiles;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UARDSDescribeDBLogFile at the specified index.
**/
- (UARDSDescribeDBLogFile *)describeDBLogFileAtIndex:(NSUInteger)index;

/**
 * Adds a DescribeDBLogFile to the describeDBLogFiles property.
 *
 * This will initialise describeDBLogFiles with an empty mutable array if necessary.
**/
- (void)addDescribeDBLogFile:(UARDSDescribeDBLogFile *)describeDBLogFile;

@end
