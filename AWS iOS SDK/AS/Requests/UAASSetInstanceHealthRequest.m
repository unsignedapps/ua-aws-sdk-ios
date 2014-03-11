//
//  UAASSetInstanceHealthRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASSetInstanceHealthRequest.h"
#import "UAASSetInstanceHealthResponse.h"

@interface UAASSetInstanceHealthRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASSetInstanceHealthRequest

@synthesize action=_action, version=_version, instanceID=_instanceID, healthStatus=_healthStatus, shouldRespectGracePeriod=_shouldRespectGracePeriod;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"SetInstanceHealth"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASSetInstanceHealthResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"instanceID": @"InstanceId",
        @"healthStatus": @"HealthStatus",
        @"shouldRespectGracePeriod": @"ShouldRespectGracePeriod"
    }];
    return [keyPaths copy];
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

- (void)setInstanceID:(NSString *)instanceID
{
	_instanceID = instanceID;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceID"])
		[self.UA_dirtyProperties addObject:@"instanceID"];
}

- (void)setHealthStatus:(NSString *)healthStatus
{
	_healthStatus = healthStatus;
	
	if (![self.UA_dirtyProperties containsObject:@"healthStatus"])
		[self.UA_dirtyProperties addObject:@"healthStatus"];
}

- (void)setShouldRespectGracePeriod:(BOOL)shouldRespectGracePeriod
{
	_shouldRespectGracePeriod = shouldRespectGracePeriod;
	
	if (![self.UA_dirtyProperties containsObject:@"shouldRespectGracePeriod"])
		[self.UA_dirtyProperties addObject:@"shouldRespectGracePeriod"];
}

+ (NSValueTransformer *)shouldRespectGracePeriodQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASSetInstanceHealthRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASSetInstanceHealthRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASSetInstanceHealthRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASSetInstanceHealthRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
