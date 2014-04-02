//
//  UAASCreateOrUpdateTagsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASCreateOrUpdateTagsRequest.h"
#import "UAASCreateOrUpdateTagsResponse.h"
#import "UAASTag.h"

@interface UAASCreateOrUpdateTagsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASCreateOrUpdateTagsRequest

@synthesize action=_action, version=_version, tags=_tags;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateOrUpdateTags"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (id)initWithTags:(NSArray *)tags
{
	if (self = [self init])
	{
		[self setTags:[tags mutableCopy]];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASCreateOrUpdateTagsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"tags": @"Tags.member"
    }];
    return [keyPaths copy];
}

- (UAASTag *)tagAtIndex:(NSUInteger)index
{
    if (self.tags == nil || index >= ([self.tags count]-1))
        return nil;

    return [self.tags objectAtIndex:index];
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

- (void)setTags:(NSMutableArray *)tags
{
	_tags = tags;
	
	if (![self.UA_dirtyProperties containsObject:@"tags"])
		[self.UA_dirtyProperties addObject:@"tags"];
}

+ (NSValueTransformer *)tagsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAASTag class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAASTag class]];
}

- (void)addTag:(UAASTag *)tag
{
	if (self.tags == nil)
		[self setTags:[NSMutableArray array]];
	[self.tags addObject:tag];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASCreateOrUpdateTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASCreateOrUpdateTagsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASCreateOrUpdateTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASCreateOrUpdateTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
