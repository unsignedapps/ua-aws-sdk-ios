//
//  UAEC2ReleaseAddressRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReleaseAddressRequest.h"
#import "UAEC2ReleaseAddressResponse.h"

@interface UAEC2ReleaseAddressRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ReleaseAddressRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, publicIP=_publicIP, allocationID=_allocationID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ReleaseAddress"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ReleaseAddressResponse class];
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
        @"publicIP": @"PublicIp",
        @"allocationID": @"AllocationId"
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

- (void)setDryRun:(BOOL)dryRun
{
	_dryRun = dryRun;
	
	if (![self.UA_dirtyProperties containsObject:@"dryRun"])
		[self.UA_dirtyProperties addObject:@"dryRun"];
}

- (void)setPublicIP:(NSString *)publicIP
{
	_publicIP = publicIP;
	
	if (![self.UA_dirtyProperties containsObject:@"publicIP"])
		[self.UA_dirtyProperties addObject:@"publicIP"];
}

- (void)setAllocationID:(NSString *)allocationID
{
	_allocationID = allocationID;
	
	if (![self.UA_dirtyProperties containsObject:@"allocationID"])
		[self.UA_dirtyProperties addObject:@"allocationID"];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ReleaseAddressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ReleaseAddressRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ReleaseAddressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ReleaseAddressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
