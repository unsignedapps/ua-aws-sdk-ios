//
//  UASNSAddPermissionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSAddPermissionRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSAddPermissionResponse.h"

@interface UASNSAddPermissionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSAddPermissionRequest

@synthesize action=_action, version=_version, topicARN=_topicARN, label=_label, aWSAccountID=_aWSAccountID, actionName=_actionName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AddPermission"];
		[self setVersion:@"2010-03-31"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(aWSAccountIDAtIndex:) propertyName:@"aWSAccountID"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(actionNameAtIndex:) propertyName:@"actionName"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAWSAccountID:) propertyName:@"aWSAccountID"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addActionName:) propertyName:@"actionName"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSAddPermissionResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"topicARN": @"TopicArn",
        @"label": @"Label",
        @"aWSAccountID": @"AWSAccountId.member",
        @"actionName": @"ActionName.member"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSAddPermissionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop