//
//  UAEC2CancelConversionTaskRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CancelConversionTaskRequest.h"
#import "UAEC2CancelConversionTaskResponse.h"

@interface UAEC2CancelConversionTaskRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2CancelConversionTaskRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, conversionTaskID=_conversionTaskID, reasonMessage=_reasonMessage;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CancelConversionTask"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CancelConversionTaskResponse class];
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
        @"conversionTaskID": @"ConversionTaskId",
        @"reasonMessage": @"ReasonMessage"
    }];
    return [keyPaths copy];
}

- (void)setAction:(NSString *)action
{
	_action = action;
	
	if (![self.UA_dirtyProperties containsObject:@"action"])
		[self.UA_dirtyProperties addObject:@"action"];
}

- (void)setVersion:(NSString *)version
{
	_version = version;
	
	if (![self.UA_dirtyProperties containsObject:@"version"])
		[self.UA_dirtyProperties addObject:@"version"];
}

- (void)setDryRun:(BOOL)dryRun
{
	_dryRun = dryRun;
	
	if (![self.UA_dirtyProperties containsObject:@"dryRun"])
		[self.UA_dirtyProperties addObject:@"dryRun"];
}

- (void)setConversionTaskID:(NSString *)conversionTaskID
{
	_conversionTaskID = conversionTaskID;
	
	if (![self.UA_dirtyProperties containsObject:@"conversionTaskID"])
		[self.UA_dirtyProperties addObject:@"conversionTaskID"];
}

- (void)setReasonMessage:(NSString *)reasonMessage
{
	_reasonMessage = reasonMessage;
	
	if (![self.UA_dirtyProperties containsObject:@"reasonMessage"])
		[self.UA_dirtyProperties addObject:@"reasonMessage"];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CancelConversionTaskRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CancelConversionTaskRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CancelConversionTaskRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CancelConversionTaskRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
