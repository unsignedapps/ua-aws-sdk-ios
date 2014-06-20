//
//  UAEC2ModifySnapshotAttributeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifySnapshotAttributeRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ModifySnapshotAttributeResponse.h"
#import "UAEC2CreateVolumePermissionModifications.h"

@interface UAEC2ModifySnapshotAttributeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ModifySnapshotAttributeRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, snapshotID=_snapshotID, attribute=_attribute, operationType=_operationType, userIDs=_userIDs, groupNames=_groupNames, createVolumePermission=_createVolumePermission;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifySnapshotAttribute"];
		[self setVersion:@"2014-02-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(userIDAtIndex:) propertyName:@"userIDs"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(groupNameAtIndex:) propertyName:@"groupNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addUserID:) propertyName:@"userIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGroupName:) propertyName:@"groupNames"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ModifySnapshotAttributeResponse class];
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
        @"snapshotID": @"SnapshotId",
        @"attribute": @"Attribute",
        @"operationType": @"OperationType",
        @"userIDs": @"UserId",
        @"groupNames": @"UserGroup",
        @"createVolumePermission": @"CreateVolumePermission"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)createVolumePermissionJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2CreateVolumePermissionModifications class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)createVolumePermissionQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2CreateVolumePermissionModifications class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ModifySnapshotAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ModifySnapshotAttributeRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ModifySnapshotAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ModifySnapshotAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop