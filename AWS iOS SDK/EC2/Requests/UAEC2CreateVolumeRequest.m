//
//  UAEC2CreateVolumeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateVolumeRequest.h"
#import "UAEC2CreateVolumeResponse.h"

@interface UAEC2CreateVolumeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2CreateVolumeRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, size=_size, snapshotID=_snapshotID, availabilityZone=_availabilityZone, volumeType=_volumeType, iops=_iops;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateVolume"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CreateVolumeResponse class];
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
        @"size": @"Size",
        @"snapshotID": @"SnapshotId",
        @"availabilityZone": @"AvailabilityZone",
        @"volumeType": @"VolumeType",
        @"iops": @"Iops"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)volumeTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeTypeStandard), @(UAEC2VolumeTypeIo1) ]
                                               stringValues:@[ @"standard", @"io1" ]
                                               unknownValue:@(UAEC2VolumeTypeUnknown)];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)volumeTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeTypeStandard), @(UAEC2VolumeTypeIo1) ]
                                               stringValues:@[ @"standard", @"io1" ]
                                               unknownValue:@(UAEC2VolumeTypeUnknown)];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateVolumeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateVolumeRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateVolumeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateVolumeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
