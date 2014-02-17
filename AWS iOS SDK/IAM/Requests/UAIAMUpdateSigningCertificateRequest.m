//
//  UAIAMUpdateSigningCertificateRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMUpdateSigningCertificateRequest.h"
#import "UAIAMUpdateSigningCertificateResponse.h"

@interface UAIAMUpdateSigningCertificateRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"Active"])
		    return @(UAIAMSigningCertificateStatusActive);
		if ([value isEqualToString:@"Inactive"])
		    return @(UAIAMSigningCertificateStatusInactive);

		return @(UAIAMSigningCertificateStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAIAMSigningCertificateStatus castValue = (UAIAMSigningCertificateStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAIAMSigningCertificateStatusActive:
			    return @"Active";
			case UAIAMSigningCertificateStatusInactive:
			    return @"Inactive";

			case UAIAMSigningCertificateStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"Active"])
		    return @(UAIAMSigningCertificateStatusActive);
		if ([value isEqualToString:@"Inactive"])
		    return @(UAIAMSigningCertificateStatusInactive);

		return @(UAIAMSigningCertificateStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAIAMSigningCertificateStatus castValue = (UAIAMSigningCertificateStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAIAMSigningCertificateStatusActive:
			    return @"Active";
			case UAIAMSigningCertificateStatusInactive:
			    return @"Inactive";

			case UAIAMSigningCertificateStatusUnknown:
			default:
				return nil;
        }
    }];
}

#pragma mark - Invocation

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

@end
