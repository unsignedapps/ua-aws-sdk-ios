//
//  UARDSDeleteDBInstanceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDeleteDBInstanceRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBInstanceResponse.h"

@interface UARDSDeleteDBInstanceRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDeleteDBInstanceRequest

@synthesize action=_action, version=_version, dBInstanceIdentifier=_dBInstanceIdentifier, skipFinalSnapshot=_skipFinalSnapshot, finalDBSnapshotIdentifier=_finalDBSnapshotIdentifier;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteDBInstance"];
		[self setVersion:@"2014-10-31"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSDBInstanceResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dBInstanceIdentifier": @"DBInstanceIdentifier",
        @"skipFinalSnapshot": @"SkipFinalSnapshot",
        @"finalDBSnapshotIdentifier": @"FinalDBSnapshotIdentifier"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSDeleteDBInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSDeleteDBInstanceRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSDeleteDBInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSDeleteDBInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop