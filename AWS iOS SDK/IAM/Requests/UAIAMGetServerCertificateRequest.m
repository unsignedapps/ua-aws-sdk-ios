//
//  UAIAMGetServerCertificateRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetServerCertificateRequest.h"
#import "UAIAMGetServerCertificateResponse.h"

@interface UAIAMGetServerCertificateRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMGetServerCertificateRequest

@synthesize action=_action, version=_version, serverCertificateName=_serverCertificateName;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"GetServerCertificate"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (id)initWithServerCertificateName:(NSString *)serverCertificateName
{
	if (self = [self init])
	{
		[self setServerCertificateName:serverCertificateName];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMGetServerCertificateResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"serverCertificateName": @"ServerCertificateName"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMGetServerCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMGetServerCertificateRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMGetServerCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMGetServerCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
