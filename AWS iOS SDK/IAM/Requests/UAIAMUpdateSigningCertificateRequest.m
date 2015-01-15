//
//  UAIAMUpdateSigningCertificateRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUpdateSigningCertificateRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMUpdateSigningCertificateResponse.h"

@interface UAIAMUpdateSigningCertificateRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMUpdateSigningCertificateRequest

@synthesize action=_action, version=_version, userName=_userName, certificateID=_certificateID, status=_status;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"UpdateSigningCertificate"];
		[self setVersion:@"2010-05-08"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAIAMUpdateSigningCertificateResponse class];
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
        @"certificateID": @"CertificateId",
        @"status": @"Status"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)statusJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAIAMSigningCertificateStatusActive), @(UAIAMSigningCertificateStatusInactive) ]
                                               stringValues:@[ @"Active", @"Inactive" ]
                                               unknownValue:@(UAIAMSigningCertificateStatusUnknown)];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAIAMSigningCertificateStatusActive), @(UAIAMSigningCertificateStatusInactive) ]
                                               stringValues:@[ @"Active", @"Inactive" ]
                                               unknownValue:@(UAIAMSigningCertificateStatusUnknown)];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAIAMUpdateSigningCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAIAMUpdateSigningCertificateRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAIAMUpdateSigningCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAIAMUpdateSigningCertificateRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop