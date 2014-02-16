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
#import "UAEC2DescriptionValue.h"

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
		[self setVersion:@"2013-10-15"];
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
        @"descriptionValue": @"DescriptionValue"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)launchPermissionJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2LaunchPermissionModifications class]];
}

+ (NSValueTransformer *)descriptionValueJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2DescriptionValue class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)launchPermissionQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2LaunchPermissionModifications class]];
}

+ (NSValueTransformer *)descriptionValueQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2DescriptionValue class]];
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
