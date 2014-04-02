//
//  UAEC2RebootInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RebootInstancesRequest.h"
#import "UAEC2RebootInstancesResponse.h"

@interface UAEC2RebootInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2RebootInstancesRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, instanceIDs=_instanceIDs;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RebootInstances"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2RebootInstancesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dryRun": @"DryRun",
        @"instanceIDs": @"InstanceId"
    }];
    return [keyPaths copy];
}

- (NSString *)instanceIDAtIndex:(NSUInteger)index
{
    if (self.instanceIDs == nil || index >= ([self.instanceIDs count]-1))
        return nil;

    return [self.instanceIDs objectAtIndex:index];
}

- (void)setAction:(NSString *)action
{
	_action = action;
	
	if (![self.UA_dirtyProperties containsObject:@"action"])
		[self.UA_dirtyProperties addObject:@"action"];
}

- (void)setVersion:(NSString *)version
{
	_version = version;
	
	if (![self.UA_dirtyProperties containsObject:@"version"])
		[self.UA_dirtyProperties addObject:@"version"];
}

- (void)setDryRun:(BOOL)dryRun
{
	_dryRun = dryRun;
	
	if (![self.UA_dirtyProperties containsObject:@"dryRun"])
		[self.UA_dirtyProperties addObject:@"dryRun"];
}

- (void)setInstanceIDs:(NSMutableArray *)instanceIDs
{
	_instanceIDs = instanceIDs;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceIDs"])
		[self.UA_dirtyProperties addObject:@"instanceIDs"];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

- (void)addInstanceID:(NSString *)instanceID
{
	if (self.instanceIDs == nil)
		[self setInstanceIDs:[NSMutableArray array]];
	[self.instanceIDs addObject:instanceID];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2RebootInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2RebootInstancesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2RebootInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2RebootInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
