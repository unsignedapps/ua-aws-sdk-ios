//
//  UAEC2ModifyNetworkInterfaceAttributeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifyNetworkInterfaceAttributeRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ModifyNetworkInterfaceAttributeResponse.h"
#import "UAEC2NetworkInterfaceAttachmentSpecification.h"

@interface UAEC2ModifyNetworkInterfaceAttributeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ModifyNetworkInterfaceAttributeRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, networkInterfaceID=_networkInterfaceID, descriptionValue=_descriptionValue, sourceDestCheck=_sourceDestCheck, groups=_groups, attachment=_attachment;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyNetworkInterfaceAttribute"];
		[self setVersion:@"2014-05-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(groupAtIndex:) propertyName:@"groups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGroup:) propertyName:@"groups"];
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
        @"sourceDestCheck": @"SourceDestCheck.Value",
        @"groups": @"SecurityGroupId",
        @"attachment": @"Attachment"
    }];
    return [keyPaths copy];
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
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)attachmentQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2NetworkInterfaceAttachmentSpecification class]];
}

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop