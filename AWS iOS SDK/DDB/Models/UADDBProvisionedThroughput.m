//
//  UADDBProvisionedThroughput.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBProvisionedThroughput.h"

@implementation UADDBProvisionedThroughput

@synthesize readCapacityUnits=_readCapacityUnits, writeCapacityUnits=_writeCapacityUnits;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"readCapacityUnits": @"ReadCapacityUnits",
        @"writeCapacityUnits": @"WriteCapacityUnits"
    }];
    return [keyPaths copy];
}

- (void)setReadCapacityUnits:(NSNumber *)readCapacityUnits
{
	_readCapacityUnits = readCapacityUnits;
	
	if (![self.UA_dirtyProperties containsObject:@"readCapacityUnits"])
		[self.UA_dirtyProperties addObject:@"readCapacityUnits"];
}

- (void)setWriteCapacityUnits:(NSNumber *)writeCapacityUnits
{
	_writeCapacityUnits = writeCapacityUnits;
	
	if (![self.UA_dirtyProperties containsObject:@"writeCapacityUnits"])
		[self.UA_dirtyProperties addObject:@"writeCapacityUnits"];
}

@end
