//
//  UADDBDeleteTableRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBDeleteTableRequest.h"
#import "UADDBDeleteTableResponse.h"

@interface UADDBDeleteTableRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

@implementation UADDBDeleteTableRequest

@synthesize xAmzTarget=_xAmzTarget, tableName=_tableName;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"DynamoDB_20120810.DeleteTable"];
	}
	return self;
}

- (id)initWithTableName:(NSString *)tableName
{
	if (self = [self init])
	{
		[self setTableName:tableName];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UADDBDeleteTableResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UADDBRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"tableName": @"TableName"
    }];
    return [keyPaths copy];
}

- (void)setXAmzTarget:(NSString *)xAmzTarget
{
	_xAmzTarget = xAmzTarget;
	
	if (![self.UA_dirtyProperties containsObject:@"xAmzTarget"])
		[self.UA_dirtyProperties addObject:@"xAmzTarget"];
}

- (void)setTableName:(NSString *)tableName
{
	_tableName = tableName;
	
	if (![self.UA_dirtyProperties containsObject:@"tableName"])
		[self.UA_dirtyProperties addObject:@"tableName"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UADDBDeleteTableRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UADDBDeleteTableRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UADDBDeleteTableRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UADDBDeleteTableRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
