//
//  UADDBListTablesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBListTablesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UADDBListTablesResponse

@synthesize tableNames=_tableNames, lastEvaluatedTableName=_lastEvaluatedTableName;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"tableNames": @"TableNames/TableNames",
        @"lastEvaluatedTableName": @"LastEvaluatedTableName"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop