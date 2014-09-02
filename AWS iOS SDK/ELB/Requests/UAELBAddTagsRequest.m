//
//  UAELBAddTagsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBAddTagsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBAddTagsResponse.h"
#import "UAELBTag.h"

@interface UAELBAddTagsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBAddTagsRequest

@synthesize action=_action, version=_version, loadBalancerNames=_loadBalancerNames, tags=_tags;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AddTags"];
		[self setVersion:@"2012-06-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(loadBalancerNameAtIndex:) propertyName:@"loadBalancerNames"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addLoadBalancerName:) propertyName:@"loadBalancerNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTag:) propertyName:@"tags"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBAddTagsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"loadBalancerNames": @"LoadBalancerNames.member",
        @"tags": @"Tags.member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAELBTag class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBTag class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBAddTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBAddTagsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBAddTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBAddTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop