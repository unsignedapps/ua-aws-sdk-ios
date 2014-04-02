//
//  UADDBUpdate.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBUpdate.h"
#import "UADDBProvisionedThroughput.h"

@implementation UADDBUpdate

@synthesize indexName=_indexName, provisionedThroughput=_provisionedThroughput;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"indexName": @"IndexName",
        @"provisionedThroughput": @"ProvisionedThroughput"
    }];
    return [keyPaths copy];
}

- (void)setIndexName:(NSString *)indexName
{
	_indexName = indexName;
	
	if (![self.UA_dirtyProperties containsObject:@"indexName"])
		[self.UA_dirtyProperties addObject:@"indexName"];
}

- (void)setProvisionedThroughput:(UADDBProvisionedThroughput *)provisionedThroughput
{
	_provisionedThroughput = provisionedThroughput;
	
	if (![self.UA_dirtyProperties containsObject:@"provisionedThroughput"])
		[self.UA_dirtyProperties addObject:@"provisionedThroughput"];
}

+ (NSValueTransformer *)provisionedThroughputJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UADDBProvisionedThroughput class]];
}

@end
