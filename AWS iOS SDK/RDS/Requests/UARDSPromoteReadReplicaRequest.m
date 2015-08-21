//
//  UARDSPromoteReadReplicaRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSPromoteReadReplicaRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBInstanceResponse.h"

@interface UARDSPromoteReadReplicaRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSPromoteReadReplicaRequest

@synthesize action=_action, version=_version, dBInstanceIdentifier=_dBInstanceIdentifier, backupRetentionPeriod=_backupRetentionPeriod, preferredBackupWindow=_preferredBackupWindow;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"PromoteReadReplica"];
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
        @"backupRetentionPeriod": @"BackupRetentionPeriod",
        @"preferredBackupWindow": @"PreferredBackupWindow"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSPromoteReadReplicaRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSPromoteReadReplicaRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSPromoteReadReplicaRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSPromoteReadReplicaRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop