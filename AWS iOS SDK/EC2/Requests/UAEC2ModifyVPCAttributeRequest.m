//
//  UAEC2ModifyVPCAttributeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifyVPCAttributeRequest.h"
#import "UAEC2ModifyVPCAttributeResponse.h"
#import "UAEC2EnableDNSSupport.h"
#import "UAEC2EnableDNSHostnames.h"

@interface UAEC2ModifyVPCAttributeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ModifyVPCAttributeRequest

@synthesize action=_action, version=_version, vpcID=_vpcID, enableDNSSupport=_enableDNSSupport, enableDNSHostnames=_enableDNSHostnames;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyVpcAttribute"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ModifyVPCAttributeResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"vpcID": @"VpcId",
        @"enableDNSSupport": @"EnableDnsSupport",
        @"enableDNSHostnames": @"EnableDnsHostnames"
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

- (void)setVpcID:(NSString *)vpcID
{
	_vpcID = vpcID;
	
	if (![self.UA_dirtyProperties containsObject:@"vpcID"])
		[self.UA_dirtyProperties addObject:@"vpcID"];
}

- (void)setEnableDNSSupport:(UAEC2EnableDNSSupport *)enableDNSSupport
{
	_enableDNSSupport = enableDNSSupport;
	
	if (![self.UA_dirtyProperties containsObject:@"enableDNSSupport"])
		[self.UA_dirtyProperties addObject:@"enableDNSSupport"];
}

- (void)setEnableDNSHostnames:(UAEC2EnableDNSHostnames *)enableDNSHostnames
{
	_enableDNSHostnames = enableDNSHostnames;
	
	if (![self.UA_dirtyProperties containsObject:@"enableDNSHostnames"])
		[self.UA_dirtyProperties addObject:@"enableDNSHostnames"];
}

+ (NSValueTransformer *)enableDNSSupportJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2EnableDNSSupport class]];
}

+ (NSValueTransformer *)enableDNSHostnamesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2EnableDNSHostnames class]];
}

+ (NSValueTransformer *)enableDNSSupportQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2EnableDNSSupport class]];
}

+ (NSValueTransformer *)enableDNSHostnamesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2EnableDNSHostnames class]];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ModifyVPCAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ModifyVPCAttributeRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ModifyVPCAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ModifyVPCAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
