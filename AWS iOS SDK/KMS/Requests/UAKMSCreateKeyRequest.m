//
//  UAKMSCreateKeyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSCreateKeyRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSCreateKeyResponse.h"

@interface UAKMSCreateKeyRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSCreateKeyRequest

@synthesize xAmzTarget=_xAmzTarget, policy=_policy, descriptionValue=_descriptionValue, keyUsage=_keyUsage;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.CreateKey"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSCreateKeyResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"policy": @"Policy",
        @"descriptionValue": @"Description",
        @"keyUsage": @"KeyUsage"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)keyUsageJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAKMSKeyUsageEncryptDecrypt) ]
                                               stringValues:@[ @"ENCRYPT_DECRYPT" ]
                                               unknownValue:@(UAKMSKeyUsageUnknown)];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSCreateKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSCreateKeyRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSCreateKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSCreateKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop