//
//  UARDSDeleteDBSubnetGroupRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDeleteDBSubnetGroupRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDeleteDBSubnetGroupResponse.h"

@interface UARDSDeleteDBSubnetGroupRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDeleteDBSubnetGroupRequest

@synthesize action=_action, version=_version, dBSubnetGroupName=_dBSubnetGroupName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteDBSubnetGroup"];
		[self setVersion:@"2014-10-31"];
		
		
	}
	return self;
}

- (id)initWithDBSubnetGroupName:(NSString *)dBSubnetGroupName
{
	if (self = [self init])
	{
		[self setDBSubnetGroupName:dBSubnetGroupName];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSDeleteDBSubnetGroupResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dBSubnetGroupName": @"DBSubnetGroupName"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSDeleteDBSubnetGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSDeleteDBSubnetGroupRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSDeleteDBSubnetGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSDeleteDBSubnetGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop