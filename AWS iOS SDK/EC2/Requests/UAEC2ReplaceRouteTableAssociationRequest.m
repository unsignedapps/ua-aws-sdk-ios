//
//  UAEC2ReplaceRouteTableAssociationRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReplaceRouteTableAssociationRequest.h"
#import "UAEC2ReplaceRouteTableAssociationResponse.h"

@interface UAEC2ReplaceRouteTableAssociationRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ReplaceRouteTableAssociationRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, associationID=_associationID, routeTableID=_routeTableID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ReplaceRouteTableAssociation"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ReplaceRouteTableAssociationResponse class];
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
        @"associationID": @"AssociationId",
        @"routeTableID": @"RouteTableId"
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

- (void)setDryRun:(BOOL)dryRun
{
	_dryRun = dryRun;
	
	if (![self.UA_dirtyProperties containsObject:@"dryRun"])
		[self.UA_dirtyProperties addObject:@"dryRun"];
}

- (void)setAssociationID:(NSString *)associationID
{
	_associationID = associationID;
	
	if (![self.UA_dirtyProperties containsObject:@"associationID"])
		[self.UA_dirtyProperties addObject:@"associationID"];
}

- (void)setRouteTableID:(NSString *)routeTableID
{
	_routeTableID = routeTableID;
	
	if (![self.UA_dirtyProperties containsObject:@"routeTableID"])
		[self.UA_dirtyProperties addObject:@"routeTableID"];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ReplaceRouteTableAssociationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ReplaceRouteTableAssociationRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ReplaceRouteTableAssociationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ReplaceRouteTableAssociationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
