//
//  UAEC2EnableVolumeIORequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2EnableVolumeIORequest.h"
#import "UAEC2EnableVolumeIOResponse.h"

@interface UAEC2EnableVolumeIORequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2EnableVolumeIORequest

@synthesize action=_action, version=_version, dryRun=_dryRun, volumeID=_volumeID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"EnableVolumeIO"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2EnableVolumeIOResponse class];
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
        @"volumeID": @"VolumeId"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2EnableVolumeIORequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2EnableVolumeIORequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2EnableVolumeIORequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2EnableVolumeIORequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
