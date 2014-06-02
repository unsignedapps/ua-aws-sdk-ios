//
//  UAASDeleteTagsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteTagsRequest.h"
#import "UAASDeleteTagsResponse.h"
#import "UAASTag.h"

@interface UAASDeleteTagsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASDeleteTagsRequest

@synthesize action=_action, version=_version, tags=_tags;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteTags"];
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
	return [UAASDeleteTagsResponse class];
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

- (void)invokeWithOwner:(id)owner completionBlock:(UAASDeleteTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDeleteTagsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDeleteTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDeleteTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
