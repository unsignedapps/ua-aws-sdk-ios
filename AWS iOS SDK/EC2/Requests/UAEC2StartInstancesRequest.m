//
//  UAEC2StartInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2StartInstancesRequest.h"
#import "UAEC2StartInstancesResponse.h"

@interface UAEC2StartInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2StartInstancesRequest

@synthesize action=_action, version=_version, instanceIDs=_instanceIDs, additionalInfo=_additionalInfo, dryRun=_dryRun;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"StartInstances"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2StartInstancesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"instanceIDs": @"InstanceId",
        @"additionalInfo": @"AdditionalInfo",
        @"dryRun": @"DryRun"
    }];
    return [keyPaths copy];
}

- (NSString *)instanceIDAtIndex:(NSUInteger)index
{
    if (self.instanceIDs == nil || index >= ([self.instanceIDs count]-1))
        return nil;

    return [self.instanceIDs objectAtIndex:index];
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

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2StartInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2StartInstancesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2StartInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2StartInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
