//
//  UAEC2DeleteNetworkACLEntryRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DeleteNetworkACLEntryRequest.h"
#import "UAEC2DeleteNetworkACLEntryResponse.h"

@interface UAEC2DeleteNetworkACLEntryRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DeleteNetworkACLEntryRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, networkACLID=_networkACLID, ruleNumber=_ruleNumber, egress=_egress;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteNetworkAclEntry"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DeleteNetworkACLEntryResponse class];
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
        @"networkACLID": @"NetworkAclId",
        @"ruleNumber": @"RuleNumber",
        @"egress": @"Egress"
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

- (void)setNetworkACLID:(NSString *)networkACLID
{
	_networkACLID = networkACLID;
	
	if (![self.UA_dirtyProperties containsObject:@"networkACLID"])
		[self.UA_dirtyProperties addObject:@"networkACLID"];
}

- (void)setRuleNumber:(NSNumber *)ruleNumber
{
	_ruleNumber = ruleNumber;
	
	if (![self.UA_dirtyProperties containsObject:@"ruleNumber"])
		[self.UA_dirtyProperties addObject:@"ruleNumber"];
}

- (void)setEgress:(BOOL)egress
{
	_egress = egress;
	
	if (![self.UA_dirtyProperties containsObject:@"egress"])
		[self.UA_dirtyProperties addObject:@"egress"];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)egressQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DeleteNetworkACLEntryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DeleteNetworkACLEntryRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DeleteNetworkACLEntryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DeleteNetworkACLEntryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
