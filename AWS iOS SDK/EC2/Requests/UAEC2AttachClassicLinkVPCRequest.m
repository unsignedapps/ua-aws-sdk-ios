//
//  UAEC2AttachClassicLinkVPCRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AttachClassicLinkVPCRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2AttachClassicLinkVPCResponse.h"

@interface UAEC2AttachClassicLinkVPCRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2AttachClassicLinkVPCRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, instanceID=_instanceID, vpcID=_vpcID, groups=_groups;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AttachClassicLinkVpc"];
		[self setVersion:@"2014-10-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(groupAtIndex:) propertyName:@"groups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGroup:) propertyName:@"groups"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2AttachClassicLinkVPCResponse class];
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
        @"instanceID": @"InstanceId",
        @"vpcID": @"VpcId",
        @"groups": @"SecurityGroupId"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2AttachClassicLinkVPCRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2AttachClassicLinkVPCRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2AttachClassicLinkVPCRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2AttachClassicLinkVPCRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop