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

+ (NSValueTransformer *)statusJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"Active"])
		    return @(UAIAMAccessKeyStatusActive);
		if ([value isEqualToString:@"Inactive"])
		    return @(UAIAMAccessKeyStatusInactive);

		return @(UAIAMAccessKeyStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAIAMAccessKeyStatus castValue = (UAIAMAccessKeyStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAIAMAccessKeyStatusActive:
			    return @"Active";
			case UAIAMAccessKeyStatusInactive:
			    return @"Inactive";

			case UAIAMAccessKeyStatusUnknown:
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
		    return @(UAIAMAccessKeyStatusActive);
		if ([value isEqualToString:@"Inactive"])
		    return @(UAIAMAccessKeyStatusInactive);

		return @(UAIAMAccessKeyStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAIAMAccessKeyStatus castValue = (UAIAMAccessKeyStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAIAMAccessKeyStatusActive:
			    return @"Active";
			case UAIAMAccessKeyStatusInactive:
			    return @"Inactive";

			case UAIAMAccessKeyStatusUnknown:
			default:
				return nil;
        }
    }];
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
