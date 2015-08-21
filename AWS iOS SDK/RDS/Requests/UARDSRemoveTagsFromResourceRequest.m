//
//  UARDSRemoveTagsFromResourceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSRemoveTagsFromResourceRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSRemoveTagsFromResourceResponse.h"

@interface UARDSRemoveTagsFromResourceRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSRemoveTagsFromResourceRequest

@synthesize action=_action, version=_version, resourceName=_resourceName, tagKeys=_tagKeys;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RemoveTagsFromResource"];
		[self setVersion:@"2014-10-31"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagKeyAtIndex:) propertyName:@"tagKeys"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTagKey:) propertyName:@"tagKeys"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSRemoveTagsFromResourceResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"resourceName": @"ResourceName",
        @"tagKeys": @"TagKeys.member"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSRemoveTagsFromResourceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSRemoveTagsFromResourceRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSRemoveTagsFromResourceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSRemoveTagsFromResourceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop