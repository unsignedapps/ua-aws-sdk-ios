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

- (void)setImageLocation:(NSString *)imageLocation
{
	_imageLocation = imageLocation;
	
	if (![self.UA_dirtyProperties containsObject:@"imageLocation"])
		[self.UA_dirtyProperties addObject:@"imageLocation"];
}

- (void)setName:(NSString *)name
{
	_name = name;
	
	if (![self.UA_dirtyProperties containsObject:@"name"])
		[self.UA_dirtyProperties addObject:@"name"];
}

- (void)setDescriptionValue:(NSString *)descriptionValue
{
	_descriptionValue = descriptionValue;
	
	if (![self.UA_dirtyProperties containsObject:@"descriptionValue"])
		[self.UA_dirtyProperties addObject:@"descriptionValue"];
}

- (void)setArchitecture:(NSString *)architecture
{
	_architecture = architecture;
	
	if (![self.UA_dirtyProperties containsObject:@"architecture"])
		[self.UA_dirtyProperties addObject:@"architecture"];
}

- (void)setKernelID:(NSString *)kernelID
{
	_kernelID = kernelID;
	
	if (![self.UA_dirtyProperties containsObject:@"kernelID"])
		[self.UA_dirtyProperties addObject:@"kernelID"];
}

- (void)setRamdiskID:(NSString *)ramdiskID
{
	_ramdiskID = ramdiskID;
	
	if (![self.UA_dirtyProperties containsObject:@"ramdiskID"])
		[self.UA_dirtyProperties addObject:@"ramdiskID"];
}

- (void)setRootDeviceName:(NSString *)rootDeviceName
{
	_rootDeviceName = rootDeviceName;
	
	if (![self.UA_dirtyProperties containsObject:@"rootDeviceName"])
		[self.UA_dirtyProperties addObject:@"rootDeviceName"];
}

- (void)setBlockDeviceMappings:(NSMutableArray *)blockDeviceMappings
{
	_blockDeviceMappings = blockDeviceMappings;
	
	if (![self.UA_dirtyProperties containsObject:@"blockDeviceMappings"])
		[self.UA_dirtyProperties addObject:@"blockDeviceMappings"];
}

- (void)setVirtualizationType:(NSString *)virtualizationType
{
	_virtualizationType = virtualizationType;
	
	if (![self.UA_dirtyProperties containsObject:@"virtualizationType"])
		[self.UA_dirtyProperties addObject:@"virtualizationType"];
}

- (void)setSriovNetSupport:(NSString *)sriovNetSupport
{
	_sriovNetSupport = sriovNetSupport;
	
	if (![self.UA_dirtyProperties containsObject:@"sriovNetSupport"])
		[self.UA_dirtyProperties addObject:@"sriovNetSupport"];
}

+ (NSValueTransformer *)blockDeviceMappingsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
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
