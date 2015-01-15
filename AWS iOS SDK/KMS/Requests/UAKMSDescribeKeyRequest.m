//
//  UAKMSDescribeKeyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSDescribeKeyRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSDescribeKeyResponse.h"

@interface UAKMSDescribeKeyRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSDescribeKeyRequest

@synthesize xAmzTarget=_xAmzTarget, keyID=_keyID;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.DescribeKey"];
		
		
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
	return [UAKMSDescribeKeyResponse class];
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

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSDescribeKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSDescribeKeyRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSDescribeKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSDescribeKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop