//
//  UAEC2RegisterImageRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RegisterImageRequest.h"
#import "UAEC2RegisterImageResponse.h"
#import "UAEC2BlockDeviceMapping.h"

@interface UAEC2RegisterImageRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2RegisterImageRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, imageLocation=_imageLocation, name=_name, descriptionValue=_descriptionValue, architecture=_architecture, kernelID=_kernelID, ramdiskID=_ramdiskID, rootDeviceName=_rootDeviceName, blockDeviceMappings=_blockDeviceMappings, virtualizationType=_virtualizationType, sriovNetSupport=_sriovNetSupport;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RegisterImage"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2RegisterImageResponse class];
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
        @"imageLocation": @"ImageLocation",
        @"name": @"Name",
        @"descriptionValue": @"DescriptionValue",
        @"architecture": @"Architecture",
        @"kernelID": @"KernelId",
        @"ramdiskID": @"RamdiskId",
        @"rootDeviceName": @"RootDeviceName",
        @"blockDeviceMappings": @"BlockDeviceMapping",
        @"virtualizationType": @"VirtualizationType",
        @"sriovNetSupport": @"SriovNetSupport"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)blockDeviceMappingsJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

- (void)addBlockDeviceMapping:(UAEC2BlockDeviceMapping *)blockDeviceMapping
{
	if (self.blockDeviceMappings == nil)
		[self setBlockDeviceMappings:[NSMutableArray array]];
	[self.blockDeviceMappings addObject:blockDeviceMapping];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2RegisterImageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2RegisterImageRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2RegisterImageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2RegisterImageRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
