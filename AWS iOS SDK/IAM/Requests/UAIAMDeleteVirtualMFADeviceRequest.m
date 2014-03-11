//
//  UAIAMDeleteVirtualMFADeviceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMDeleteVirtualMFADeviceRequest.h"
#import "UAIAMDeleteVirtualMFADeviceResponse.h"

@interface UAIAMDeleteVirtualMFADeviceRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMDeleteVirtualMFADeviceRequest

@synthesize action=_action, version=_version, serialNumber=_serialNumber;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteVirtualMFADevice"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (id)initWithSerialNumber:(NSString *)serialNumber
{
	if (self = [self init])
	{
		[self setSerialNumber:serialNumber];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMDeleteVirtualMFADeviceResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"serialNumber": @"SerialNumber"
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

- (void)setSerialNumber:(NSString *)serialNumber
{
	_serialNumber = serialNumber;
	
	if (![self.UA_dirtyProperties containsObject:@"serialNumber"])
		[self.UA_dirtyProperties addObject:@"serialNumber"];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMDeleteVirtualMFADeviceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMDeleteVirtualMFADeviceRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMDeleteVirtualMFADeviceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMDeleteVirtualMFADeviceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
