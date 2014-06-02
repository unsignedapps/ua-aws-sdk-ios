//
//  UAEC2ResetNetworkInterfaceAttributeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ResetNetworkInterfaceAttributeRequest.h"
#import "UAEC2ResetNetworkInterfaceAttributeResponse.h"

@interface UAEC2ResetNetworkInterfaceAttributeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ResetNetworkInterfaceAttributeRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, networkInterfaceID=_networkInterfaceID, sourceDestCheck=_sourceDestCheck;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ResetNetworkInterfaceAttribute"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ResetNetworkInterfaceAttributeResponse class];
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
        @"networkInterfaceID": @"NetworkInterfaceId",
        @"sourceDestCheck": @"SourceDestCheck"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ResetNetworkInterfaceAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ResetNetworkInterfaceAttributeRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ResetNetworkInterfaceAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ResetNetworkInterfaceAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
