//
//  UAEC2ModifyInstanceAttributeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifyInstanceAttributeRequest.h"
#import "UAEC2ModifyInstanceAttributeResponse.h"
#import "UAEC2InstanceBlockDeviceMappingSpecification.h"
#import "UAEC2SourceDestCheck.h"
#import "UAEC2Kernel.h"
#import "UAEC2Ramdisk.h"
#import "UAEC2UserData.h"
#import "UAEC2InstanceInitiatedShutdownBehavior.h"
#import "UAEC2EBSOptimized.h"
#import "UAEC2SriovNetSupport.h"

@interface UAEC2ModifyInstanceAttributeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ModifyInstanceAttributeRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, instanceID=_instanceID, attribute=_attribute, value=_value, blockDeviceMappings=_blockDeviceMappings, sourceDestCheck=_sourceDestCheck, disableApiTermination=_disableApiTermination, instanceType=_instanceType, kernel=_kernel, ramdisk=_ramdisk, userData=_userData, instanceInitiatedShutdownBehavior=_instanceInitiatedShutdownBehavior, groups=_groups, ebsOptimized=_ebsOptimized, sriovNetSupport=_sriovNetSupport;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyInstanceAttribute"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ModifyInstanceAttributeResponse class];
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
        @"instanceID": @"InstanceId",
        @"attribute": @"Attribute",
        @"value": @"Value",
        @"blockDeviceMappings": @"BlockDeviceMapping",
        @"sourceDestCheck": @"SourceDestCheck",
        @"disableApiTermination": @"DisableApiTermination.Value",
        @"instanceType": @"InstanceType.Value",
        @"kernel": @"Kernel",
        @"ramdisk": @"Ramdisk",
        @"userData": @"UserData",
        @"instanceInitiatedShutdownBehavior": @"InstanceInitiatedShutdownBehavior",
        @"groups": @"GroupId",
        @"ebsOptimized": @"EbsOptimized",
        @"sriovNetSupport": @"SriovNetSupport"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)blockDeviceMappingsJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAEC2InstanceBlockDeviceMappingSpecification class]];
}

+ (NSValueTransformer *)sourceDestCheckJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2SourceDestCheck class]];
}

+ (NSValueTransformer *)kernelJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2Kernel class]];
}

+ (NSValueTransformer *)ramdiskJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2Ramdisk class]];
}

+ (NSValueTransformer *)userDataJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2UserData class]];
}

+ (NSValueTransformer *)instanceInitiatedShutdownBehaviorJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2InstanceInitiatedShutdownBehavior class]];
}

+ (NSValueTransformer *)ebsOptimizedJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2EBSOptimized class]];
}

+ (NSValueTransformer *)sriovNetSupportJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2SriovNetSupport class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceBlockDeviceMappingSpecification class]];
}

+ (NSValueTransformer *)sourceDestCheckQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2SourceDestCheck class]];
}

+ (NSValueTransformer *)disableApiTerminationQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)kernelQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2Kernel class]];
}

+ (NSValueTransformer *)ramdiskQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2Ramdisk class]];
}

+ (NSValueTransformer *)userDataQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2UserData class]];
}

+ (NSValueTransformer *)instanceInitiatedShutdownBehaviorQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2InstanceInitiatedShutdownBehavior class]];
}

+ (NSValueTransformer *)ebsOptimizedQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2EBSOptimized class]];
}

+ (NSValueTransformer *)sriovNetSupportQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2SriovNetSupport class]];
}

- (void)addBlockDeviceMapping:(UAEC2InstanceBlockDeviceMappingSpecification *)blockDeviceMapping
{
	if (self.blockDeviceMappings == nil)
		[self setBlockDeviceMappings:[NSMutableArray array]];
	[self.blockDeviceMappings addObject:blockDeviceMapping];
}
- (void)addGroup:(NSString *)group
{
	if (self.groups == nil)
		[self setGroups:[NSMutableArray array]];
	[self.groups addObject:group];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ModifyInstanceAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ModifyInstanceAttributeRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ModifyInstanceAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ModifyInstanceAttributeRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
