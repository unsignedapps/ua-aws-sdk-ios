//
//  UARDSModifyDBSubnetGroupRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModifyDBSubnetGroupRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBSubnetGroupResponse.h"

@interface UARDSModifyDBSubnetGroupRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSModifyDBSubnetGroupRequest

@synthesize action=_action, version=_version, dBSubnetGroupName=_dBSubnetGroupName, dBSubnetGroupDescription=_dBSubnetGroupDescription, subnetIDs=_subnetIDs;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyDBSubnetGroup"];
		[self setVersion:@"2014-10-31"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(subnetIDAtIndex:) propertyName:@"subnetIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSubnetID:) propertyName:@"subnetIDs"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSDBSubnetGroupResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dBSubnetGroupName": @"DBSubnetGroupName",
        @"dBSubnetGroupDescription": @"DBSubnetGroupDescription",
        @"subnetIDs": @"SubnetIds.member"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSModifyDBSubnetGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSModifyDBSubnetGroupRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSModifyDBSubnetGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSModifyDBSubnetGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop