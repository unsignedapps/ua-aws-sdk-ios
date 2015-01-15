//
//  UAELBDescribeTagsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeTagsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBDescribeTagsResponse.h"

@interface UAELBDescribeTagsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBDescribeTagsRequest

@synthesize action=_action, version=_version, loadBalancerNames=_loadBalancerNames;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeTags"];
		[self setVersion:@"2012-06-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(loadBalancerNameAtIndex:) propertyName:@"loadBalancerNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addLoadBalancerName:) propertyName:@"loadBalancerNames"];
	}
	return self;
}

- (id)initWithLoadBalancerNames:(NSArray *)loadBalancerNames
{
	if ((self = [self init]))
	{
		[self setLoadBalancerNames:[loadBalancerNames mutableCopy]];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAELBDescribeTagsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"loadBalancerNames": @"LoadBalancerNames.member"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAELBDescribeTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAELBDescribeTagsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAELBDescribeTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAELBDescribeTagsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop