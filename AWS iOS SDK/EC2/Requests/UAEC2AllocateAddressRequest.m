//
//  UAEC2AllocateAddressRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AllocateAddressRequest.h"
#import "UAEC2AllocateAddressResponse.h"

@interface UAEC2AllocateAddressRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2AllocateAddressRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, domain=_domain;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AllocateAddress"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2AllocateAddressResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dryRun": @"DryRun",
        @"domain": @"Domain"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)domainJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"standard"])
		    return @(UAEC2DomainStandard);
		if ([value isEqualToString:@"vpc"])
		    return @(UAEC2DomainVPC);

		return @(UAEC2DomainUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2Domain castValue = (UAEC2Domain)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2DomainStandard:
			    return @"standard";
			case UAEC2DomainVPC:
			    return @"vpc";

			case UAEC2DomainUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)domainQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"standard"])
		    return @(UAEC2DomainStandard);
		if ([value isEqualToString:@"vpc"])
		    return @(UAEC2DomainVPC);

		return @(UAEC2DomainUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2Domain castValue = (UAEC2Domain)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2DomainStandard:
			    return @"standard";
			case UAEC2DomainVPC:
			    return @"vpc";

			case UAEC2DomainUnknown:
			default:
				return nil;
        }
    }];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2AllocateAddressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2AllocateAddressRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2AllocateAddressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2AllocateAddressRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
