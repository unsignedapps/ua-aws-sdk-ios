//
//  UAKMSGetKeyRotationStatusRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSGetKeyRotationStatusRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSGetKeyRotationStatusResponse.h"

@interface UAKMSGetKeyRotationStatusRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSGetKeyRotationStatusRequest

@synthesize xAmzTarget=_xAmzTarget, keyID=_keyID;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.GetKeyRotationStatus"];
		
		
	}
	return self;
}

- (id)initWithKeyID:(NSString *)keyID
{
	if ((self = [self init]))
	{
		[self setKeyID:keyID];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSGetKeyRotationStatusResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"keyID": @"KeyId"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSGetKeyRotationStatusRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSGetKeyRotationStatusRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSGetKeyRotationStatusRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSGetKeyRotationStatusRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop