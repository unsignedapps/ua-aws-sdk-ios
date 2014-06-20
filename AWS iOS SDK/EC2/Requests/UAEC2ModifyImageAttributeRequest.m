//
//  UAEC2ModifyImageAttributeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifyImageAttributeRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ModifyImageAttributeResponse.h"
#import "UAEC2LaunchPermissionModifications.h"

@interface UAEC2ModifyImageAttributeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ModifyImageAttributeRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, imageID=_imageID, attribute=_attribute, operationType=_operationType, userIDs=_userIDs, userGroups=_userGroups, productCodes=_productCodes, value=_value, launchPermission=_launchPermission, descriptionValue=_descriptionValue;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyImageAttribute"];
		[self setVersion:@"2014-02-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(userIDAtIndex:) propertyName:@"userIDs"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(userGroupAtIndex:) propertyName:@"userGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(productCodeAtIndex:) propertyName:@"productCodes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addUserID:) propertyName:@"userIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addUserGroup:) propertyName:@"userGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addProductCode:) propertyName:@"productCodes"];
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

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop