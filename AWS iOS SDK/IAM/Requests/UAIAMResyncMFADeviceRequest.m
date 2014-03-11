//
//  UAIAMResyncMFADeviceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResyncMFADeviceRequest.h"
#import "UAIAMResyncMFADeviceResponse.h"

@interface UAIAMResyncMFADeviceRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMResyncMFADeviceRequest

@synthesize action=_action, version=_version, userName=_userName, serialNumber=_serialNumber, authenticationCode1=_authenticationCode1, authenticationCode2=_authenticationCode2;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ResyncMFADevice"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMResyncMFADeviceResponse class];
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
        @"serialNumber": @"SerialNumber",
        @"authenticationCode1": @"AuthenticationCode1",
        @"authenticationCode2": @"AuthenticationCode2"
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

- (void)setSerialNumber:(NSString *)serialNumber
{
	_serialNumber = serialNumber;
	
	if (![self.UA_dirtyProperties containsObject:@"serialNumber"])
		[self.UA_dirtyProperties addObject:@"serialNumber"];
}

- (void)setAuthenticationCode1:(NSString *)authenticationCode1
{
	_authenticationCode1 = authenticationCode1;
	
	if (![self.UA_dirtyProperties containsObject:@"authenticationCode1"])
		[self.UA_dirtyProperties addObject:@"authenticationCode1"];
}

- (void)setAuthenticationCode2:(NSString *)authenticationCode2
{
	_authenticationCode2 = authenticationCode2;
	
	if (![self.UA_dirtyProperties containsObject:@"authenticationCode2"])
		[self.UA_dirtyProperties addObject:@"authenticationCode2"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMResyncMFADeviceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMResyncMFADeviceRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMResyncMFADeviceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMResyncMFADeviceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
