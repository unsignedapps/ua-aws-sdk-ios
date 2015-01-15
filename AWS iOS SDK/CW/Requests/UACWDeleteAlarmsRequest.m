//
//  UACWDeleteAlarmsRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDeleteAlarmsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UACWDeleteAlarmsResponse.h"

@interface UACWDeleteAlarmsRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWDeleteAlarmsRequest

@synthesize action=_action, version=_version, alarmNames=_alarmNames;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DeleteAlarms"];
		[self setVersion:@"2010-08-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(alarmNameAtIndex:) propertyName:@"alarmNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAlarmName:) propertyName:@"alarmNames"];
	}
	return self;
}

- (id)initWithAlarmNames:(NSArray *)alarmNames
{
	if ((self = [self init]))
	{
		[self setAlarmNames:[alarmNames mutableCopy]];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UACWDeleteAlarmsResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"alarmNames": @"AlarmNames.member"
    }];
    return [keyPaths copy];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UACWDeleteAlarmsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UACWDeleteAlarmsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UACWDeleteAlarmsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UACWDeleteAlarmsRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop