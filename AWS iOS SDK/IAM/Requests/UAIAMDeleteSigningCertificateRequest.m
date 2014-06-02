//
//  UAIAMDeleteSigningCertificateRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMDeleteSigningCertificateRequest.h"
#import "UAIAMDeleteSigningCertificateResponse.h"

@interface UAIAMDeleteSigningCertificateRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAIAMDeleteSigningCertificateRequest

@synthesize action=_action, version=_version, userName=_userName, certificateID=_certificateID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteSigningCertificate"];
		[self setVersion:@"2010-05-08"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMDeleteSigningCertificateResponse class];
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
        @"certificateID": @"CertificateId"
    }];
    return [keyPaths copy];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMDeleteSigningCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMDeleteSigningCertificateRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMDeleteSigningCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMDeleteSigningCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
