//
//  UARDSDeleteDBSnapshotRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDeleteDBSnapshotRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBSnapshotResponse.h"

@interface UARDSDeleteDBSnapshotRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDeleteDBSnapshotRequest

@synthesize action=_action, version=_version, dBSnapshotIdentifier=_dBSnapshotIdentifier;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteDBSnapshot"];
		[self setVersion:@"2014-10-31"];
		
		
	}
	return self;
}

- (id)initWithDBSnapshotIdentifier:(NSString *)dBSnapshotIdentifier
{
	if (self = [self init])
	{
		[self setDBSnapshotIdentifier:dBSnapshotIdentifier];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSDBSnapshotResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dBSnapshotIdentifier": @"DBSnapshotIdentifier"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSDeleteDBSnapshotRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSDeleteDBSnapshotRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSDeleteDBSnapshotRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSDeleteDBSnapshotRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop