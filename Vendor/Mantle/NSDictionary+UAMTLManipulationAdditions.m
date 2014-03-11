//
//  NSDictionary+UAMTLManipulationAdditions.m
//  Mantle
//
//  Created by Justin Spahr-Summers on 2012-09-24.
//  Copyright (c) 2012 GitHub. All rights reserved.
//

#import "NSDictionary+UAMTLManipulationAdditions.h"

@implementation NSDictionary (UAMTLManipulationAdditions)

- (NSDictionary *)UAMTL_dictionaryByAddingEntriesFromDictionary:(NSDictionary *)dictionary {
	NSMutableDictionary *result = [self mutableCopy];
	[result addEntriesFromDictionary:dictionary];
	return result;
}

- (NSDictionary *)UAMTL_dictionaryByRemovingEntriesWithKeys:(NSSet *)keys {
	NSMutableDictionary *result = [self mutableCopy];
	[result removeObjectsForKeys:keys.allObjects];
	return result;
}

@end
