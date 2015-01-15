//
//  UAKMSGenerateRandomRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSGenerateRandomRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSGenerateRandomResponse.h"

@interface UAKMSGenerateRandomRequest ()

@property (nonatomic, copy) NSString *xAmzTarget;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSGenerateRandomRequest

@synthesize xAmzTarget=_xAmzTarget, numberOfBytes=_numberOfBytes;

- (id)init
{
	if (self = [super init])
	{
		[self setXAmzTarget:@"TrentService.GenerateRandom"];
		
		
	}
	return self;
}

- (id)initWithNumberOfBytes:(NSNumber *)numberOfBytes
{
	if ((self = [self init]))
	{
		[self setNumberOfBytes:numberOfBytes];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAKMSGenerateRandomResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSRequest JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"xAmzTarget": [NSNull null],
        @"numberOfBytes": @"NumberOfBytes"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSGenerateRandomRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSGenerateRandomRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSGenerateRandomRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSGenerateRandomRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop