//
//  UASQSAddPermissionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSAddPermissionRequest.h"
#import "UASQSAddPermissionResponse.h"

@interface UASQSAddPermissionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASQSAddPermissionRequest

@synthesize action=_action, version=_version, queueUrl=_queueUrl, label=_label, aWSAccountIDs=_aWSAccountIDs, actions=_actions;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AddPermission"];
		[self setVersion:@"2012-11-05"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASQSAddPermissionResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASQSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"queueUrl": @"QueueUrl",
        @"label": @"Label",
        @"aWSAccountIDs": @"AWSAccountId",
        @"actions": @"ActionName"
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

- (void)setQueueUrl:(NSString *)queueUrl
{
	_queueUrl = queueUrl;
	
	if (![self.UA_dirtyProperties containsObject:@"queueUrl"])
		[self.UA_dirtyProperties addObject:@"queueUrl"];
}

- (void)setLabel:(NSString *)label
{
	_label = label;
	
	if (![self.UA_dirtyProperties containsObject:@"label"])
		[self.UA_dirtyProperties addObject:@"label"];
}

- (void)setAWSAccountIDs:(NSMutableArray *)aWSAccountIDs
{
	_aWSAccountIDs = aWSAccountIDs;
	
	if (![self.UA_dirtyProperties containsObject:@"aWSAccountIDs"])
		[self.UA_dirtyProperties addObject:@"aWSAccountIDs"];
}

- (void)setActions:(NSMutableArray *)actions
{
	_actions = actions;
	
	if (![self.UA_dirtyProperties containsObject:@"actions"])
		[self.UA_dirtyProperties addObject:@"actions"];
}

+ (NSValueTransformer *)actionsQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSArray *(NSArray *values)
    {
		NSNumber *(^stringToEnumBlock)(NSString *value) = ^NSNumber *(NSString *value)
		{
	        if ([value isKindOfClass:[NSNumber class]])
	            return (NSNumber *)value;
        
		if ([value isEqualToString:@"*"])
		    return @(UASQSActionNameAll);
		if ([value isEqualToString:@"SendMessage"])
		    return @(UASQSActionNameSendMessage);
		if ([value isEqualToString:@"ReceiveMessage"])
		    return @(UASQSActionNameReceiveMessage);
		if ([value isEqualToString:@"DeleteMessage"])
		    return @(UASQSActionNameDeleteMessage);
		if ([value isEqualToString:@"ChangeMessageVisibility"])
		    return @(UASQSActionNameChangeMessageVisibility);
		if ([value isEqualToString:@"GetQueueAttributes"])
		    return @(UASQSActionNameGetQueueAttributes);
		if ([value isEqualToString:@"GetQueueUrl"])
		    return @(UASQSActionNameGetQueueUrl);

			return @(UASQSActionNameUnknown);
		};

		NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[values count]];
		for (NSString *value in values)
			[array addObject:stringToEnumBlock(value)];
		return [array copy];

    } reverseBlock:^NSArray *(NSArray *values)
    {
		NSString *(^enumToStringBlock)(NSNumber *value) = ^NSString *(NSNumber *value)
		{
	        UASQSActionName castValue = (UASQSActionName)[value unsignedIntegerValue];
	        switch (castValue)
	        {
			case UASQSActionNameAll:
			    return @"*";
			case UASQSActionNameSendMessage:
			    return @"SendMessage";
			case UASQSActionNameReceiveMessage:
			    return @"ReceiveMessage";
			case UASQSActionNameDeleteMessage:
			    return @"DeleteMessage";
			case UASQSActionNameChangeMessageVisibility:
			    return @"ChangeMessageVisibility";
			case UASQSActionNameGetQueueAttributes:
			    return @"GetQueueAttributes";
			case UASQSActionNameGetQueueUrl:
			    return @"GetQueueUrl";

				case UASQSActionNameUnknown:
				default:
					return nil;
	        }
		};
		
		NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[values count]];
		for (NSNumber *value in values)
			[array addObject:enumToStringBlock(value)];
		return [array copy];
    }];
}

+ (NSValueTransformer *)actionsJSONTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSArray *(NSArray *values)
    {
		NSNumber *(^stringToEnumBlock)(NSString *value) = ^NSNumber *(NSString *value)
		{
	        if ([value isKindOfClass:[NSNumber class]])
	            return (NSNumber *)value;
        
		if ([value isEqualToString:@"*"])
		    return @(UASQSActionNameAll);
		if ([value isEqualToString:@"SendMessage"])
		    return @(UASQSActionNameSendMessage);
		if ([value isEqualToString:@"ReceiveMessage"])
		    return @(UASQSActionNameReceiveMessage);
		if ([value isEqualToString:@"DeleteMessage"])
		    return @(UASQSActionNameDeleteMessage);
		if ([value isEqualToString:@"ChangeMessageVisibility"])
		    return @(UASQSActionNameChangeMessageVisibility);
		if ([value isEqualToString:@"GetQueueAttributes"])
		    return @(UASQSActionNameGetQueueAttributes);
		if ([value isEqualToString:@"GetQueueUrl"])
		    return @(UASQSActionNameGetQueueUrl);

			return @(UASQSActionNameUnknown);
		};

		NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[values count]];
		for (NSString *value in values)
			[array addObject:stringToEnumBlock(value)];
		return [array copy];

    } reverseBlock:^NSArray *(NSArray *values)
    {
		NSString *(^enumToStringBlock)(NSNumber *value) = ^NSString *(NSNumber *value)
		{
	        UASQSActionName castValue = (UASQSActionName)[value unsignedIntegerValue];
	        switch (castValue)
	        {
			case UASQSActionNameAll:
			    return @"*";
			case UASQSActionNameSendMessage:
			    return @"SendMessage";
			case UASQSActionNameReceiveMessage:
			    return @"ReceiveMessage";
			case UASQSActionNameDeleteMessage:
			    return @"DeleteMessage";
			case UASQSActionNameChangeMessageVisibility:
			    return @"ChangeMessageVisibility";
			case UASQSActionNameGetQueueAttributes:
			    return @"GetQueueAttributes";
			case UASQSActionNameGetQueueUrl:
			    return @"GetQueueUrl";

				case UASQSActionNameUnknown:
				default:
					return nil;
	        }
		};
		
		NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[values count]];
		for (NSNumber *value in values)
			[array addObject:enumToStringBlock(value)];
		return [array copy];
    }];
}

- (void)addAWSAccountID:(NSString *)aWSAccountID
{
	if (self.aWSAccountIDs == nil)
		[self setAWSAccountIDs:[NSMutableArray array]];
	[self.aWSAccountIDs addObject:aWSAccountID];
}

- (void)addAction:(UASQSActionName)action
{
	if (self.actions == nil)
		[self setActions:[NSMutableArray array]];
	[self.actions addObject:@(action)];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASQSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASQSAddPermissionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASQSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASQSAddPermissionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
