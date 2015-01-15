//
//  UAEC2RegisterImageRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RegisterImageRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2RegisterImageResponse.h"
#import "UAEC2BlockDeviceMapping.h"

@interface UAEC2RegisterImageRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2RegisterImageRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, imageLocation=_imageLocation, name=_name, descriptionValue=_descriptionValue, architecture=_architecture, kernelID=_kernelID, ramdiskID=_ramdiskID, rootDeviceName=_rootDeviceName, blockDeviceMappings=_blockDeviceMappings, virtualizationType=_virtualizationType, sriovNetSupport=_sriovNetSupport;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RegisterImage"];
		[self setVersion:@"2014-10-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(blockDeviceMappingAtIndex:) propertyName:@"blockDeviceMappings"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addBlockDeviceMapping:) propertyName:@"blockDeviceMappings"];
	}
	return self;
}

- (void)setName:(NSString *)name
{
    [self willChangeValueForKey:@"name"];
    _name = name;
    [self didChangeValueForKey:@"name"];
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
        @"descriptionValue": @"Description",
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

+ (NSValueTransformer *)architectureJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ArchitectureI386), @(UAEC2ArchitectureX8664) ]
                                               stringValues:@[ @"i386", @"x86_64" ]
                                               unknownValue:@(UAEC2ArchitectureUnknown)];
}

+ (NSValueTransformer *)blockDeviceMappingsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)virtualizationTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VirtualizationTypeParavirtual), @(UAEC2VirtualizationTypeHvm) ]
                                               stringValues:@[ @"paravirtual", @"hvm" ]
                                               unknownValue:@(UAEC2VirtualizationTypeUnknown)];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)architectureQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ArchitectureI386), @(UAEC2ArchitectureX8664) ]
                                               stringValues:@[ @"i386", @"x86_64" ]
                                               unknownValue:@(UAEC2ArchitectureUnknown)];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)virtualizationTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VirtualizationTypeParavirtual), @(UAEC2VirtualizationTypeHvm) ]
                                               stringValues:@[ @"paravirtual", @"hvm" ]
                                               unknownValue:@(UAEC2VirtualizationTypeUnknown)];
}

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop