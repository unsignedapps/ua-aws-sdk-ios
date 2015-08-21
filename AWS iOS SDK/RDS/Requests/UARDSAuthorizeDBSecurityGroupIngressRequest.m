//
//  UARDSAuthorizeDBSecurityGroupIngressRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSAuthorizeDBSecurityGroupIngressRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBSecurityGroupResponse.h"

@interface UARDSAuthorizeDBSecurityGroupIngressRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSAuthorizeDBSecurityGroupIngressRequest

@synthesize action=_action, version=_version, dBSecurityGroupName=_dBSecurityGroupName, cIDRIP=_cIDRIP, eC2SecurityGroupName=_eC2SecurityGroupName, eC2SecurityGroupID=_eC2SecurityGroupID, eC2SecurityGroupOwnerID=_eC2SecurityGroupOwnerID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AuthorizeDBSecurityGroupIngress"];
		[self setVersion:@"2014-10-31"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSDBSecurityGroupResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dBSecurityGroupName": @"DBSecurityGroupName",
        @"cIDRIP": @"CIDRIP",
        @"eC2SecurityGroupName": @"EC2SecurityGroupName",
        @"eC2SecurityGroupID": @"EC2SecurityGroupId",
        @"eC2SecurityGroupOwnerID": @"EC2SecurityGroupOwnerId"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSAuthorizeDBSecurityGroupIngressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSAuthorizeDBSecurityGroupIngressRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSAuthorizeDBSecurityGroupIngressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSAuthorizeDBSecurityGroupIngressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop