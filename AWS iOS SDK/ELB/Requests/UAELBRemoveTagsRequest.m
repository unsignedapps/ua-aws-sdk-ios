//
//  UAELBRemoveTagsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBRemoveTagsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBRemoveTagsResponse.h"
#import "UAELBTagName.h"

@interface UAELBRemoveTagsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBRemoveTagsRequest

@synthesize action=_action, version=_version, loadBalancerNames=_loadBalancerNames, tagNames=_tagNames;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RemoveTags"];
		[self setVersion:@"2012-06-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(loadBalancerNameAtIndex:) propertyName:@"loadBalancerNames"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagNameAtIndex:) propertyName:@"tagNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addLoadBalancerName:) propertyName:@"loadBalancerNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTagName:) propertyName:@"tagNames"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBRemoveTagsResponse class];
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
        @"tagNames": @"Tags.member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagNamesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAELBTagName class]];
}

+ (NSValueTransformer *)tagNamesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBTagName class]];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBRemoveTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBRemoveTagsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBRemoveTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBRemoveTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop