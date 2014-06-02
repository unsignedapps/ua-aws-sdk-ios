//
//  UAEC2ImportVolumeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportVolumeRequest.h"
#import "UAEC2ImportVolumeResponse.h"
#import "UAEC2DiskImageDetail.h"
#import "UAEC2VolumeDetail.h"

@interface UAEC2ImportVolumeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ImportVolumeRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, availabilityZone=_availabilityZone, image=_image, descriptionValue=_descriptionValue, volume=_volume;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ImportVolume"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ImportVolumeResponse class];
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
        @"availabilityZone": @"AvailabilityZone",
        @"image": @"Image",
        @"descriptionValue": @"Description",
        @"volume": @"Volume"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)imageJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2DiskImageDetail class]];
}

+ (NSValueTransformer *)volumeJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2VolumeDetail class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)imageQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2DiskImageDetail class]];
}

+ (NSValueTransformer *)volumeQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2VolumeDetail class]];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ImportVolumeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ImportVolumeRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ImportVolumeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ImportVolumeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
