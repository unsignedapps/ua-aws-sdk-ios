//
//  UAIAMCreateVirtualMFADeviceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateVirtualMFADeviceRequest.h"
#import "UAIAMCreateVirtualMFADeviceResponse.h"

@interface UAIAMCreateVirtualMFADeviceRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMCreateVirtualMFADeviceRequest

@synthesize action=_action, version=_version, path=_path, virtualMFADeviceName=_virtualMFADeviceName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateVirtualMFADevice"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMCreateVirtualMFADeviceResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"path": @"Path",
        @"virtualMFADeviceName": @"VirtualMFADeviceName"
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

- (void)setPath:(NSString *)path
{
	_path = path;
	
	if (![self.UA_dirtyProperties containsObject:@"path"])
		[self.UA_dirtyProperties addObject:@"path"];
}

- (void)setVirtualMFADeviceName:(NSString *)virtualMFADeviceName
{
	_virtualMFADeviceName = virtualMFADeviceName;
	
	if (![self.UA_dirtyProperties containsObject:@"virtualMFADeviceName"])
		[self.UA_dirtyProperties addObject:@"virtualMFADeviceName"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMCreateVirtualMFADeviceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMCreateVirtualMFADeviceRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMCreateVirtualMFADeviceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMCreateVirtualMFADeviceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
