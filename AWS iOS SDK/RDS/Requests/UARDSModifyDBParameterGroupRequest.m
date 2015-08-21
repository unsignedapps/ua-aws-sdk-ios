//
//  UARDSModifyDBParameterGroupRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModifyDBParameterGroupRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBParameterGroupNameMessage.h"
#import "UARDSParameter.h"

@interface UARDSModifyDBParameterGroupRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSModifyDBParameterGroupRequest

@synthesize action=_action, version=_version, dBParameterGroupName=_dBParameterGroupName, parameters=_parameters;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyDBParameterGroup"];
		[self setVersion:@"2014-10-31"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(parameterAtIndex:) propertyName:@"parameters"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addParameter:) propertyName:@"parameters"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSDBParameterGroupNameMessage class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dBParameterGroupName": @"DBParameterGroupName",
        @"parameters": @"Parameters.member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)parametersJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UARDSParameter class]];
}

+ (NSValueTransformer *)parametersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSParameter class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSModifyDBParameterGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSModifyDBParameterGroupRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSModifyDBParameterGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSModifyDBParameterGroupRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop