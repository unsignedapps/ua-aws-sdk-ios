//
//  UASNSCreatePlatformApplicationRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSCreatePlatformApplicationRequest.h"
#import "UASNSCreatePlatformApplicationResponse.h"

@interface UASNSCreatePlatformApplicationRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UASNSCreatePlatformApplicationRequest

@synthesize action=_action, version=_version, name=_name, platform=_platform, attributes=_attributes;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreatePlatformApplication"];
		[self setVersion:@"2010-03-31"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UASNSCreatePlatformApplicationResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"name": @"Name",
        @"platform": @"Platform",
        @"attributes": @"Attributes.entry"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)platformJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ADM"])
		    return @(UASNSPlatformApplicationTypeADM);
		if ([value isEqualToString:@"APNS"])
		    return @(UASNSPlatformApplicationTypeAPNS);
		if ([value isEqualToString:@"APNS_SANDBOX"])
		    return @(UASNSPlatformApplicationTypeAPNS_SANDBOX);
		if ([value isEqualToString:@"GCM"])
		    return @(UASNSPlatformApplicationTypeGCM);

		return @(UASNSPlatformApplicationTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UASNSPlatformApplicationType castValue = (UASNSPlatformApplicationType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UASNSPlatformApplicationTypeADM:
			    return @"ADM";
			case UASNSPlatformApplicationTypeAPNS:
			    return @"APNS";
			case UASNSPlatformApplicationTypeAPNS_SANDBOX:
			    return @"APNS_SANDBOX";
			case UASNSPlatformApplicationTypeGCM:
			    return @"GCM";

			case UASNSPlatformApplicationTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)attributesJSONTransformer
{
    return [NSValueTransformer UA_JSONKeyValueTransformer];
}

+ (NSValueTransformer *)platformQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ADM"])
		    return @(UASNSPlatformApplicationTypeADM);
		if ([value isEqualToString:@"APNS"])
		    return @(UASNSPlatformApplicationTypeAPNS);
		if ([value isEqualToString:@"APNS_SANDBOX"])
		    return @(UASNSPlatformApplicationTypeAPNS_SANDBOX);
		if ([value isEqualToString:@"GCM"])
		    return @(UASNSPlatformApplicationTypeGCM);

		return @(UASNSPlatformApplicationTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UASNSPlatformApplicationType castValue = (UASNSPlatformApplicationType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UASNSPlatformApplicationTypeADM:
			    return @"ADM";
			case UASNSPlatformApplicationTypeAPNS:
			    return @"APNS";
			case UASNSPlatformApplicationTypeAPNS_SANDBOX:
			    return @"APNS_SANDBOX";
			case UASNSPlatformApplicationTypeGCM:
			    return @"GCM";

			case UASNSPlatformApplicationTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)attributesQueryStringTransformer
{
    return [NSValueTransformer UA_JSONKeyValueTransformer];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UASNSCreatePlatformApplicationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UASNSCreatePlatformApplicationRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UASNSCreatePlatformApplicationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UASNSCreatePlatformApplicationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
