//
//  UAEC2ReportInstanceStatusRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReportInstanceStatusRequest.h"
#import "UAEC2ReportInstanceStatusResponse.h"

@interface UAEC2ReportInstanceStatusRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ReportInstanceStatusRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, instances=_instances, status=_status, startTime=_startTime, endTime=_endTime, reasonCodes=_reasonCodes, descriptionValue=_descriptionValue;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ReportInstanceStatus"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ReportInstanceStatusResponse class];
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
        @"instances": @"InstanceId",
        @"status": @"Status",
        @"startTime": @"StartTime",
        @"endTime": @"EndTime",
        @"reasonCodes": @"ReasonCode",
        @"descriptionValue": @"Description"
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

- (void)setInstances:(NSMutableArray *)instances
{
	_instances = instances;
	
	if (![self.UA_dirtyProperties containsObject:@"instances"])
		[self.UA_dirtyProperties addObject:@"instances"];
}

- (void)setStatus:(NSString *)status
{
	_status = status;
	
	if (![self.UA_dirtyProperties containsObject:@"status"])
		[self.UA_dirtyProperties addObject:@"status"];
}

- (void)setStartTime:(NSDate *)startTime
{
	_startTime = startTime;
	
	if (![self.UA_dirtyProperties containsObject:@"startTime"])
		[self.UA_dirtyProperties addObject:@"startTime"];
}

- (void)setEndTime:(NSDate *)endTime
{
	_endTime = endTime;
	
	if (![self.UA_dirtyProperties containsObject:@"endTime"])
		[self.UA_dirtyProperties addObject:@"endTime"];
}

- (void)setReasonCodes:(NSMutableArray *)reasonCodes
{
	_reasonCodes = reasonCodes;
	
	if (![self.UA_dirtyProperties containsObject:@"reasonCodes"])
		[self.UA_dirtyProperties addObject:@"reasonCodes"];
}

- (void)setDescriptionValue:(NSString *)descriptionValue
{
	_descriptionValue = descriptionValue;
	
	if (![self.UA_dirtyProperties containsObject:@"descriptionValue"])
		[self.UA_dirtyProperties addObject:@"descriptionValue"];
}

+ (NSValueTransformer *)startTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeJSONTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)startTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

- (void)addInstance:(NSString *)instance
{
	if (self.instances == nil)
		[self setInstances:[NSMutableArray array]];
	[self.instances addObject:instance];
}

- (void)addReasonCode:(NSString *)reasonCode
{
	if (self.reasonCodes == nil)
		[self setReasonCodes:[NSMutableArray array]];
	[self.reasonCodes addObject:reasonCode];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ReportInstanceStatusRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ReportInstanceStatusRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ReportInstanceStatusRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ReportInstanceStatusRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
