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

- (void)setSize:(NSNumber *)size
{
	_size = size;
	
	if (![self.UA_dirtyProperties containsObject:@"size"])
		[self.UA_dirtyProperties addObject:@"size"];
}

- (void)setSnapshotID:(NSString *)snapshotID
{
	_snapshotID = snapshotID;
	
	if (![self.UA_dirtyProperties containsObject:@"snapshotID"])
		[self.UA_dirtyProperties addObject:@"snapshotID"];
}

- (void)setAvailabilityZone:(NSString *)availabilityZone
{
	_availabilityZone = availabilityZone;
	
	if (![self.UA_dirtyProperties containsObject:@"availabilityZone"])
		[self.UA_dirtyProperties addObject:@"availabilityZone"];
}

- (void)setVolumeType:(UAEC2VolumeType)volumeType
{
	_volumeType = volumeType;
	
	if (![self.UA_dirtyProperties containsObject:@"volumeType"])
		[self.UA_dirtyProperties addObject:@"volumeType"];
}

- (void)setIops:(NSNumber *)iops
{
	_iops = iops;
	
	if (![self.UA_dirtyProperties containsObject:@"iops"])
		[self.UA_dirtyProperties addObject:@"iops"];
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
