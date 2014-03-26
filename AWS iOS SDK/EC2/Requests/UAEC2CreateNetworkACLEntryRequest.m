//
//  UAEC2CreateNetworkACLEntryRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateNetworkACLEntryRequest.h"
#import "UAEC2CreateNetworkACLEntryResponse.h"
#import "UAEC2IcmpTypeCode.h"
#import "UAEC2PortRange.h"

@interface UAEC2CreateNetworkACLEntryRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2CreateNetworkACLEntryRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, networkACLID=_networkACLID, ruleNumber=_ruleNumber, protocol=_protocol, ruleAction=_ruleAction, egress=_egress, cidrBlock=_cidrBlock, icmpTypeCode=_icmpTypeCode, portRange=_portRange;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateNetworkAclEntry"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CreateNetworkACLEntryResponse class];
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

- (void)setProtocol:(NSString *)protocol
{
	_protocol = protocol;
	
	if (![self.UA_dirtyProperties containsObject:@"protocol"])
		[self.UA_dirtyProperties addObject:@"protocol"];
}

- (void)setRuleAction:(NSString *)ruleAction
{
	_ruleAction = ruleAction;
	
	if (![self.UA_dirtyProperties containsObject:@"ruleAction"])
		[self.UA_dirtyProperties addObject:@"ruleAction"];
}

- (void)setEgress:(BOOL)egress
{
	_egress = egress;
	
	if (![self.UA_dirtyProperties containsObject:@"egress"])
		[self.UA_dirtyProperties addObject:@"egress"];
}

- (void)setCidrBlock:(NSString *)cidrBlock
{
	_cidrBlock = cidrBlock;
	
	if (![self.UA_dirtyProperties containsObject:@"cidrBlock"])
		[self.UA_dirtyProperties addObject:@"cidrBlock"];
}

- (void)setIcmpTypeCode:(UAEC2IcmpTypeCode *)icmpTypeCode
{
	_icmpTypeCode = icmpTypeCode;
	
	if (![self.UA_dirtyProperties containsObject:@"icmpTypeCode"])
		[self.UA_dirtyProperties addObject:@"icmpTypeCode"];
}

- (void)setPortRange:(UAEC2PortRange *)portRange
{
	_portRange = portRange;
	
	if (![self.UA_dirtyProperties containsObject:@"portRange"])
		[self.UA_dirtyProperties addObject:@"portRange"];
}

+ (NSValueTransformer *)icmpTypeCodeJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2IcmpTypeCode class]];
}

+ (NSValueTransformer *)portRangeJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2PortRange class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)egressQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)icmpTypeCodeQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2IcmpTypeCode class]];
}

+ (NSValueTransformer *)portRangeQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2PortRange class]];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateNetworkACLEntryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateNetworkACLEntryRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateNetworkACLEntryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateNetworkACLEntryRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
