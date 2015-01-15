//
//  UAKMSUpdateKeyDescriptionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSUpdateKeyDescriptionRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSUpdateKeyDescriptionResponse.h"

@interface UAKMSUpdateKeyDescriptionRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSUpdateKeyDescriptionRequest

@synthesize xAmzTarget=_xAmzTarget, keyID=_keyID, descriptionValue=_descriptionValue;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.UpdateKeyDescription"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSUpdateKeyDescriptionResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"keyID": @"KeyId",
        @"descriptionValue": @"Description"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSUpdateKeyDescriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSUpdateKeyDescriptionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSUpdateKeyDescriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSUpdateKeyDescriptionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop