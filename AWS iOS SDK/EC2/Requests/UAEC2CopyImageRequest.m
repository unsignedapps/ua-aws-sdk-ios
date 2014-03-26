//
//  UAEC2CopyImageRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CopyImageRequest.h"
#import "UAEC2CopyImageResponse.h"

@interface UAEC2CopyImageRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2CopyImageRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, sourceRegion=_sourceRegion, sourceImageID=_sourceImageID, name=_name, descriptionValue=_descriptionValue, clientToken=_clientToken;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CopyImage"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CopyImageResponse class];
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
        @"sourceRegion": @"SourceRegion",
        @"sourceImageID": @"SourceImageId",
        @"name": @"Name",
        @"descriptionValue": @"Description",
        @"clientToken": @"ClientToken"
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

- (void)setSourceRegion:(NSString *)sourceRegion
{
	_sourceRegion = sourceRegion;
	
	if (![self.UA_dirtyProperties containsObject:@"sourceRegion"])
		[self.UA_dirtyProperties addObject:@"sourceRegion"];
}

- (void)setSourceImageID:(NSString *)sourceImageID
{
	_sourceImageID = sourceImageID;
	
	if (![self.UA_dirtyProperties containsObject:@"sourceImageID"])
		[self.UA_dirtyProperties addObject:@"sourceImageID"];
}

- (void)setName:(NSString *)name
{
	_name = name;
	
	if (![self.UA_dirtyProperties containsObject:@"name"])
		[self.UA_dirtyProperties addObject:@"name"];
}

- (void)setDescriptionValue:(NSString *)descriptionValue
{
	_descriptionValue = descriptionValue;
	
	if (![self.UA_dirtyProperties containsObject:@"descriptionValue"])
		[self.UA_dirtyProperties addObject:@"descriptionValue"];
}

- (void)setClientToken:(NSString *)clientToken
{
	_clientToken = clientToken;
	
	if (![self.UA_dirtyProperties containsObject:@"clientToken"])
		[self.UA_dirtyProperties addObject:@"clientToken"];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CopyImageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CopyImageRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CopyImageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CopyImageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
