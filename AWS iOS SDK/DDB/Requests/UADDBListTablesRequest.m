//
//  UADDBListTablesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBListTablesRequest.h"
#import "UADDBListTablesResponse.h"

@interface UADDBListTablesRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

@implementation UADDBListTablesRequest

@synthesize xAmzTarget=_xAmzTarget, exclusiveStartTableName=_exclusiveStartTableName, limit=_limit;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.ListTables"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBListTablesResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"exclusiveStartTableName": @"ExclusiveStartTableName",
        @"limit": @"Limit"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBListTablesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBListTablesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBListTablesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBListTablesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
