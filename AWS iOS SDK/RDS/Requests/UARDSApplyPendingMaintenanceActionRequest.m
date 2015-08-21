//
//  UARDSApplyPendingMaintenanceActionRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSApplyPendingMaintenanceActionRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSResourcePendingMaintenanceActionsResponse.h"

@interface UARDSApplyPendingMaintenanceActionRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSApplyPendingMaintenanceActionRequest

@synthesize action=_action, version=_version, resourceIdentifier=_resourceIdentifier, applyAction=_applyAction, optInType=_optInType;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ApplyPendingMaintenanceAction"];
		[self setVersion:@"2014-10-31"];
		
		
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSResourcePendingMaintenanceActionsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"resourceIdentifier": @"ResourceIdentifier",
        @"applyAction": @"ApplyAction",
        @"optInType": @"OptInType"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)optInTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSOptInTypeImmediate), @(UARDSOptInTypeNextMaintenance), @(UARDSOptInTypeUndoOptIn) ]
                                               stringValues:@[ @"immediate", @"next-maintenance", @"undo-opt-in" ]
                                               unknownValue:@(UARDSOptInTypeUnknown)];
}

+ (NSValueTransformer *)optInTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSOptInTypeImmediate), @(UARDSOptInTypeNextMaintenance), @(UARDSOptInTypeUndoOptIn) ]
                                               stringValues:@[ @"immediate", @"next-maintenance", @"undo-opt-in" ]
                                               unknownValue:@(UARDSOptInTypeUnknown)];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSApplyPendingMaintenanceActionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSApplyPendingMaintenanceActionRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSApplyPendingMaintenanceActionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSApplyPendingMaintenanceActionRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop