//
//  UAEC2ModifyNetworkInterfaceAttributeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifyNetworkInterfaceAttributeRequest.h"
#import "UAEC2ModifyNetworkInterfaceAttributeResponse.h"
#import "UAEC2SourceDestCheck.h"
#import "UAEC2NetworkInterfaceAttachmentSpecification.h"

@interface UAEC2ModifyNetworkInterfaceAttributeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ModifyNetworkInterfaceAttributeRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, networkInterfaceID=_networkInterfaceID, descriptionValue=_descriptionValue, sourceDestCheck=_sourceDestCheck, groups=_groups, attachment=_attachment;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyNetworkInterfaceAttribute"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ModifyNetworkInterfaceAttributeResponse class];
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
        @"networkInterfaceID": @"NetworkInterfaceId",
        @"descriptionValue": @"Description.Value",
        @"sourceDestCheck": @"SourceDestCheck",
        @"groups": @"SecurityGroupId",
        @"attachment": @"Attachment"
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

- (void)setNetworkInterfaceID:(NSString *)networkInterfaceID
{
	_networkInterfaceID = networkInterfaceID;
	
	if (![self.UA_dirtyProperties containsObject:@"networkInterfaceID"])
		[self.UA_dirtyProperties addObject:@"networkInterfaceID"];
}

- (void)setDescriptionValue:(NSString *)descriptionValue
{
	_descriptionValue = descriptionValue;
	
	if (![self.UA_dirtyProperties containsObject:@"descriptionValue"])
		[self.UA_dirtyProperties addObject:@"descriptionValue"];
}

- (void)setSourceDestCheck:(UAEC2SourceDestCheck *)sourceDestCheck
{
	_sourceDestCheck = sourceDestCheck;
	
	if (![self.UA_dirtyProperties containsObject:@"sourceDestCheck"])
		[self.UA_dirtyProperties addObject:@"sourceDestCheck"];
}

- (void)setGroups:(NSMutableArray *)groups
{
	_groups = groups;
	
	if (![self.UA_dirtyProperties containsObject:@"groups"])
		[self.UA_dirtyProperties addObject:@"groups"];
}

- (void)setAttachment:(UAEC2NetworkInterfaceAttachmentSpecification *)attachment
{
	_attachment = attachment;
	
	if (![self.UA_dirtyProperties containsObject:@"attachment"])
		[self.UA_dirtyProperties addObject:@"attachment"];
}

+ (NSValueTransformer *)sourceDestCheckJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2SourceDestCheck class]];
}

+ (NSValueTransformer *)attachmentJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2NetworkInterfaceAttachmentSpecification class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)sourceDestCheckQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2SourceDestCheck class]];
}

+ (NSValueTransformer *)attachmentQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2NetworkInterfaceAttachmentSpecification class]];
}

- (void)addGroup:(NSString *)group
{
	if (self.groups == nil)
		[self setGroups:[NSMutableArray array]];
	[self.groups addObject:group];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ModifyNetworkInterfaceAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ModifyNetworkInterfaceAttributeRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ModifyNetworkInterfaceAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ModifyNetworkInterfaceAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
