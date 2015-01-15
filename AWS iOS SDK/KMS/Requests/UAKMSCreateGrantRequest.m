//
//  UAKMSCreateGrantRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSCreateGrantRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSCreateGrantResponse.h"
#import "UAKMSConstraints.h"

@interface UAKMSCreateGrantRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSCreateGrantRequest

@synthesize xAmzTarget=_xAmzTarget, keyID=_keyID, granteePrincipal=_granteePrincipal, retiringPrincipal=_retiringPrincipal, operations=_operations, constraints=_constraints, grantTokens=_grantTokens;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.CreateGrant"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(operationAtIndex:) propertyName:@"operations"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(grantTokenAtIndex:) propertyName:@"grantTokens"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOperation:) propertyName:@"operations"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGrantToken:) propertyName:@"grantTokens"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSCreateGrantResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"keyID": @"KeyId",
        @"granteePrincipal": @"GranteePrincipal",
        @"retiringPrincipal": @"RetiringPrincipal",
        @"operations": @"Operations/Operations",
        @"constraints": @"Constraints",
        @"grantTokens": @"GrantTokens/GrantTokens"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)constraintsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAKMSConstraints class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSCreateGrantRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSCreateGrantRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSCreateGrantRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSCreateGrantRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop