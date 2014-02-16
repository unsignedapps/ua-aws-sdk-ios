//
//  UAEC2AuthorizeSecurityGroupIngressRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AuthorizeSecurityGroupIngressRequest.h"
#import "UAEC2AuthorizeSecurityGroupIngressResponse.h"
#import "UAEC2IPPermission.h"

@interface UAEC2AuthorizeSecurityGroupIngressRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2AuthorizeSecurityGroupIngressRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, groupName=_groupName, groupID=_groupID, sourceSecurityGroupName=_sourceSecurityGroupName, sourceSecurityGroupOwnerID=_sourceSecurityGroupOwnerID, ipProtocol=_ipProtocol, fromPort=_fromPort, toPort=_toPort, cidrIP=_cidrIP, ipPermissions=_ipPermissions;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AuthorizeSecurityGroupIngress"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2AuthorizeSecurityGroupIngressResponse class];
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
        @"groupName": @"GroupName",
        @"groupID": @"GroupId",
        @"sourceSecurityGroupName": @"SourceSecurityGroupName",
        @"sourceSecurityGroupOwnerID": @"SourceSecurityGroupOwnerId",
        @"ipProtocol": @"IpProtocol",
        @"fromPort": @"FromPort",
        @"toPort": @"ToPort",
        @"cidrIP": @"CidrIp",
        @"ipPermissions": @"IpPermissions"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)ipPermissionsJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAEC2IPPermission class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)ipPermissionsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2IPPermission class]];
}

- (void)addIPPermission:(UAEC2IPPermission *)iPPermission
{
	if (self.ipPermissions == nil)
		[self setIpPermissions:[NSMutableArray array]];
	[self.ipPermissions addObject:iPPermission];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2AuthorizeSecurityGroupIngressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2AuthorizeSecurityGroupIngressRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2AuthorizeSecurityGroupIngressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2AuthorizeSecurityGroupIngressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
