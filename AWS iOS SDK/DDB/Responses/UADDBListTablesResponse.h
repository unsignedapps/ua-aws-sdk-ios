//
//  UADDBListTablesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBResponse.h"

@interface UADDBListTablesResponse : UADDBResponse

@property (nonatomic, copy) NSArray *tableNames;
@property (nonatomic, copy) NSString *lastEvaluatedTableName;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)tableNameAtIndex:(NSUInteger)index;

/**
 * Adds a TableName to the tableNames property.
 *
 * This will initialise tableNames with an empty mutable array if necessary.
**/
- (void)addTableName:(NSString *)tableName;

@end
