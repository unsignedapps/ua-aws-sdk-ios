//
//  UAEC2ReplaceNetworkACLEntryRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReplaceNetworkACLEntryRequest.h"
#import "UAEC2ReplaceNetworkACLEntryResponse.h"
#import "UAEC2IcmpTypeCode.h"
#import "UAEC2PortRange.h"

@interface UAEC2ReplaceNetworkACLEntryRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ReplaceNetworkACLEntryRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, networkACLID=_networkACLID, ruleNumber=_ruleNumber, protocol=_protocol, ruleAction=_ruleAction, egress=_egress, cidrBlock=_cidrBlock, icmpTypeCode=_icmpTypeCode, portRange=_portRange;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ReplaceNetworkAclEntry"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ReplaceNetworkACLEntryResponse class];
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
        @"protocol": @"Protocol",
        @"ruleAction": @"RuleAction",
        @"egress": @"Egress",
        @"cidrBlock": @"CidrBlock",
        @"icmpTypeCode": @"Icmp",
        @"portRange": @"PortRange"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)icmpTypeCodeJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2IcmpTypeCode class]];
}

+ (NSValueTransformer *)portRangeJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2PortRange class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)egressQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)icmpTypeCodeQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2IcmpTypeCode class]];
}

+ (NSValueTransformer *)portRangeQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2PortRange class]];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ReplaceNetworkACLEntryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ReplaceNetworkACLEntryRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ReplaceNetworkACLEntryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ReplaceNetworkACLEntryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
