//
//  UAEC2DescribeImagesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeImagesRequest.h"
#import "UAEC2DescribeImagesResponse.h"
#import "UAEC2Filter.h"

@interface UAEC2DescribeImagesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DescribeImagesRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, imageIDs=_imageIDs, owners=_owners, executableUsers=_executableUsers, filters=_filters;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeImages"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeImagesResponse class];
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
        @"imageIDs": @"ImageId",
        @"owners": @"Owner",
        @"executableUsers": @"ExecutableBy",
        @"filters": @"Filter"
    }];
    return [keyPaths copy];
}

- (NSString *)imageIDAtIndex:(NSUInteger)index
{
    if (self.imageIDs == nil || index >= ([self.imageIDs count]-1))
        return nil;

    return [self.imageIDs objectAtIndex:index];
}

- (NSString *)ownerAtIndex:(NSUInteger)index
{
    if (self.owners == nil || index >= ([self.owners count]-1))
        return nil;

    return [self.owners objectAtIndex:index];
}

- (NSString *)executableUserAtIndex:(NSUInteger)index
{
    if (self.executableUsers == nil || index >= ([self.executableUsers count]-1))
        return nil;

    return [self.executableUsers objectAtIndex:index];
}

- (UAEC2Filter *)filterAtIndex:(NSUInteger)index
{
    if (self.filters == nil || index >= ([self.filters count]-1))
        return nil;

    return [self.filters objectAtIndex:index];
}

+ (NSValueTransformer *)filtersJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2Filter class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)filtersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Filter class]];
}

- (void)addImageID:(NSString *)imageID
{
	if (self.imageIDs == nil)
		[self setImageIDs:[NSMutableArray array]];
	[self.imageIDs addObject:imageID];
}

- (void)addOwner:(NSString *)owner
{
	if (self.owners == nil)
		[self setOwners:[NSMutableArray array]];
	[self.owners addObject:owner];
}

- (void)addExecutableUser:(NSString *)executableUser
{
	if (self.executableUsers == nil)
		[self setExecutableUsers:[NSMutableArray array]];
	[self.executableUsers addObject:executableUser];
}

- (void)addFilter:(UAEC2Filter *)filter
{
	if (self.filters == nil)
		[self setFilters:[NSMutableArray array]];
	[self.filters addObject:filter];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeImagesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeImagesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeImagesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeImagesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
