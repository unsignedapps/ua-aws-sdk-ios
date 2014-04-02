//
//  UAEC2ModifyImageAttributeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifyImageAttributeRequest.h"
#import "UAEC2ModifyImageAttributeResponse.h"
#import "UAEC2LaunchPermissionModifications.h"

@interface UAEC2ModifyImageAttributeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ModifyImageAttributeRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, imageID=_imageID, attribute=_attribute, operationType=_operationType, userIDs=_userIDs, userGroups=_userGroups, productCodes=_productCodes, value=_value, launchPermission=_launchPermission, descriptionValue=_descriptionValue;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyImageAttribute"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ModifyImageAttributeResponse class];
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
        @"imageID": @"ImageId",
        @"attribute": @"Attribute",
        @"operationType": @"OperationType",
        @"userIDs": @"UserId",
        @"userGroups": @"UserGroup",
        @"productCodes": @"ProductCode",
        @"value": @"Value",
        @"launchPermission": @"LaunchPermission",
        @"descriptionValue": @"Description.Value"
    }];
    return [keyPaths copy];
}

- (NSString *)userIDAtIndex:(NSUInteger)index
{
    if (self.userIDs == nil || index >= ([self.userIDs count]-1))
        return nil;

    return [self.userIDs objectAtIndex:index];
}

- (NSString *)userGroupAtIndex:(NSUInteger)index
{
    if (self.userGroups == nil || index >= ([self.userGroups count]-1))
        return nil;

    return [self.userGroups objectAtIndex:index];
}

- (NSString *)productCodeAtIndex:(NSUInteger)index
{
    if (self.productCodes == nil || index >= ([self.productCodes count]-1))
        return nil;

    return [self.productCodes objectAtIndex:index];
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

- (void)setImageID:(NSString *)imageID
{
	_imageID = imageID;
	
	if (![self.UA_dirtyProperties containsObject:@"imageID"])
		[self.UA_dirtyProperties addObject:@"imageID"];
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

- (void)setUserGroups:(NSMutableArray *)userGroups
{
	_userGroups = userGroups;
	
	if (![self.UA_dirtyProperties containsObject:@"userGroups"])
		[self.UA_dirtyProperties addObject:@"userGroups"];
}

- (void)setProductCodes:(NSMutableArray *)productCodes
{
	_productCodes = productCodes;
	
	if (![self.UA_dirtyProperties containsObject:@"productCodes"])
		[self.UA_dirtyProperties addObject:@"productCodes"];
}

- (void)setValue:(NSString *)value
{
	_value = value;
	
	if (![self.UA_dirtyProperties containsObject:@"value"])
		[self.UA_dirtyProperties addObject:@"value"];
}

- (void)setLaunchPermission:(UAEC2LaunchPermissionModifications *)launchPermission
{
	_launchPermission = launchPermission;
	
	if (![self.UA_dirtyProperties containsObject:@"launchPermission"])
		[self.UA_dirtyProperties addObject:@"launchPermission"];
}

- (void)setDescriptionValue:(NSString *)descriptionValue
{
	_descriptionValue = descriptionValue;
	
	if (![self.UA_dirtyProperties containsObject:@"descriptionValue"])
		[self.UA_dirtyProperties addObject:@"descriptionValue"];
}

+ (NSValueTransformer *)launchPermissionJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2LaunchPermissionModifications class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)launchPermissionQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2LaunchPermissionModifications class]];
}

- (void)addUserID:(NSString *)userID
{
	if (self.userIDs == nil)
		[self setUserIDs:[NSMutableArray array]];
	[self.userIDs addObject:userID];
}

- (void)addUserGroup:(NSString *)userGroup
{
	if (self.userGroups == nil)
		[self setUserGroups:[NSMutableArray array]];
	[self.userGroups addObject:userGroup];
}

- (void)addProductCode:(NSString *)productCode
{
	if (self.productCodes == nil)
		[self setProductCodes:[NSMutableArray array]];
	[self.productCodes addObject:productCode];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ModifyImageAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ModifyImageAttributeRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ModifyImageAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ModifyImageAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
