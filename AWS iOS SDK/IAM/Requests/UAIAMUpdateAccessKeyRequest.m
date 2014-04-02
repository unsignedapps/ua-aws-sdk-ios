//
//  UAIAMUpdateAccessKeyRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUpdateAccessKeyRequest.h"
#import "UAIAMUpdateAccessKeyResponse.h"

@interface UAIAMUpdateAccessKeyRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMUpdateAccessKeyRequest

@synthesize action=_action, version=_version, userName=_userName, accessKeyID=_accessKeyID, status=_status;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"UpdateAccessKey"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMUpdateAccessKeyResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"userName": @"UserName",
        @"accessKeyID": @"AccessKeyId",
        @"status": @"Status"
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

- (void)setUserName:(NSString *)userName
{
	_userName = userName;
	
	if (![self.UA_dirtyProperties containsObject:@"userName"])
		[self.UA_dirtyProperties addObject:@"userName"];
}

- (void)setAccessKeyID:(NSString *)accessKeyID
{
	_accessKeyID = accessKeyID;
	
	if (![self.UA_dirtyProperties containsObject:@"accessKeyID"])
		[self.UA_dirtyProperties addObject:@"accessKeyID"];
}

- (void)setStatus:(UAIAMAccessKeyStatus)status
{
	_status = status;
	
	if (![self.UA_dirtyProperties containsObject:@"status"])
		[self.UA_dirtyProperties addObject:@"status"];
}

+ (NSValueTransformer *)statusJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAIAMAccessKeyStatusActive), @(UAIAMAccessKeyStatusInactive) ]
                                               stringValues:@[ @"Active", @"Inactive" ]
                                               unknownValue:@(UAIAMAccessKeyStatusUnknown)];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAIAMAccessKeyStatusActive), @(UAIAMAccessKeyStatusInactive) ]
                                               stringValues:@[ @"Active", @"Inactive" ]
                                               unknownValue:@(UAIAMAccessKeyStatusUnknown)];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMUpdateAccessKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMUpdateAccessKeyRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMUpdateAccessKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMUpdateAccessKeyRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
