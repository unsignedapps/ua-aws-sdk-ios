//
//  UAEC2ModifySnapshotAttributeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifySnapshotAttributeRequest.h"
#import "UAEC2ModifySnapshotAttributeResponse.h"
#import "UAEC2CreateVolumePermissionModifications.h"

@interface UAEC2ModifySnapshotAttributeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ModifySnapshotAttributeRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, snapshotID=_snapshotID, attribute=_attribute, operationType=_operationType, userIDs=_userIDs, groupNames=_groupNames, createVolumePermission=_createVolumePermission;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifySnapshotAttribute"];
		[self setVersion:@"2013-10-15"];
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

- (void)setSnapshotID:(NSString *)snapshotID
{
	_snapshotID = snapshotID;
	
	if (![self.UA_dirtyProperties containsObject:@"snapshotID"])
		[self.UA_dirtyProperties addObject:@"snapshotID"];
}

- (void)setAttribute:(NSString *)attribute
{
	_attribute = attribute;
	
	if (![self.UA_dirtyProperties containsObject:@"attribute"])
		[self.UA_dirtyProperties addObject:@"attribute"];
}

- (void)setOperationType:(NSString *)operationType
{
	_operationType = operationType;
	
	if (![self.UA_dirtyProperties containsObject:@"operationType"])
		[self.UA_dirtyProperties addObject:@"operationType"];
}

- (void)setUserIDs:(NSMutableArray *)userIDs
{
	_userIDs = userIDs;
	
	if (![self.UA_dirtyProperties containsObject:@"userIDs"])
		[self.UA_dirtyProperties addObject:@"userIDs"];
}

- (void)setGroupNames:(NSMutableArray *)groupNames
{
	_groupNames = groupNames;
	
	if (![self.UA_dirtyProperties containsObject:@"groupNames"])
		[self.UA_dirtyProperties addObject:@"groupNames"];
}

- (void)setCreateVolumePermission:(UAEC2CreateVolumePermissionModifications *)createVolumePermission
{
	_createVolumePermission = createVolumePermission;
	
	if (![self.UA_dirtyProperties containsObject:@"createVolumePermission"])
		[self.UA_dirtyProperties addObject:@"createVolumePermission"];
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

- (void)addUserID:(NSString *)userID
{
	if (self.userIDs == nil)
		[self setUserIDs:[NSMutableArray array]];
	[self.userIDs addObject:userID];
}

- (void)addGroupName:(NSString *)groupName
{
	if (self.groupNames == nil)
		[self setGroupNames:[NSMutableArray array]];
	[self.groupNames addObject:groupName];
}

#pragma mark - Invocation

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

@end
