//
//  UAIAMUploadServerCertificateRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUploadServerCertificateRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMUploadServerCertificateResponse.h"

@interface UAIAMUploadServerCertificateRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMUploadServerCertificateRequest

@synthesize action=_action, version=_version, path=_path, serverCertificateName=_serverCertificateName, certificateBody=_certificateBody, privateKey=_privateKey, certificateChain=_certificateChain;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"UploadServerCertificate"];
		[self setVersion:@"2010-05-08"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMUploadServerCertificateResponse class];
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
        @"serverCertificateName": @"ServerCertificateName",
        @"certificateBody": @"CertificateBody",
        @"privateKey": @"PrivateKey",
        @"certificateChain": @"CertificateChain"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMUploadServerCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMUploadServerCertificateRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMUploadServerCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMUploadServerCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop