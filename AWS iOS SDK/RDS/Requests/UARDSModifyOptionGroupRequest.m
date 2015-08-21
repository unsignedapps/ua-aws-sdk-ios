//
//  UARDSModifyOptionGroupRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModifyOptionGroupRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSOptionGroupResponse.h"
#import "UARDSOptionToInclude.h"

@interface UARDSModifyOptionGroupRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSModifyOptionGroupRequest

@synthesize action=_action, version=_version, optionGroupName=_optionGroupName, optionsToInclude=_optionsToInclude, optionsToRemove=_optionsToRemove, applyImmediately=_applyImmediately;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyOptionGroup"];
		[self setVersion:@"2014-10-31"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(optionToIncludeAtIndex:) propertyName:@"optionsToInclude"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(optionToRemoveAtIndex:) propertyName:@"optionsToRemove"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOptionToInclude:) propertyName:@"optionsToInclude"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOptionToRemove:) propertyName:@"optionsToRemove"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSOptionGroupResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"optionGroupName": @"OptionGroupName",
        @"optionsToInclude": @"OptionsToInclude.member",
        @"optionsToRemove": @"OptionsToRemove.member",
        @"applyImmediately": @"ApplyImmediately"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)optionsToIncludeJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UARDSOptionToInclude class]];
}

+ (NSValueTransformer *)optionsToIncludeQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSOptionToInclude class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSModifyOptionGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSModifyOptionGroupRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSModifyOptionGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSModifyOptionGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop