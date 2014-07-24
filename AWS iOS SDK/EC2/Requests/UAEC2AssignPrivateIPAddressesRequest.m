//
//  UAEC2AssignPrivateIPAddressesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AssignPrivateIPAddressesRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2AssignPrivateIPAddressesResponse.h"

@interface UAEC2AssignPrivateIPAddressesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2AssignPrivateIPAddressesRequest

@synthesize action=_action, version=_version, networkInterfaceID=_networkInterfaceID, privateIPAddresses=_privateIPAddresses, secondaryPrivateIPAddressCount=_secondaryPrivateIPAddressCount, allowReassignment=_allowReassignment;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"AssignPrivateIpAddresses"];
		[self setVersion:@"2014-05-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(privateIPAddressAtIndex:) propertyName:@"privateIPAddresses"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPrivateIPAddress:) propertyName:@"privateIPAddresses"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2AssignPrivateIPAddressesResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"networkInterfaceID": @"NetworkInterfaceId",
        @"privateIPAddresses": @"PrivateIpAddress",
        @"secondaryPrivateIPAddressCount": @"SecondaryPrivateIpAddressCount",
        @"allowReassignment": @"AllowReassignment"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)allowReassignmentQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2AssignPrivateIPAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2AssignPrivateIPAddressesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2AssignPrivateIPAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2AssignPrivateIPAddressesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop