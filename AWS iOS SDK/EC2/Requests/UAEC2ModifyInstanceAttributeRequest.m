//
//  UAEC2ModifyInstanceAttributeRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifyInstanceAttributeRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ModifyInstanceAttributeResponse.h"
#import "UAEC2InstanceBlockDeviceMappingSpecification.h"
#import "UAEC2Kernel.h"
#import "UAEC2Ramdisk.h"
#import "UAEC2EBSOptimized.h"
#import "UAEC2SriovNetSupport.h"

@interface UAEC2ModifyInstanceAttributeRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ModifyInstanceAttributeRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, instanceID=_instanceID, attribute=_attribute, value=_value, blockDeviceMappings=_blockDeviceMappings, sourceDestCheck=_sourceDestCheck, disableApiTermination=_disableApiTermination, instanceType=_instanceType, kernel=_kernel, ramdisk=_ramdisk, userData=_userData, instanceInitiatedShutdownBehavior=_instanceInitiatedShutdownBehavior, groups=_groups, ebsOptimized=_ebsOptimized, sriovNetSupport=_sriovNetSupport;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyInstanceAttribute"];
		[self setVersion:@"2014-10-01"];
		
		[self UA_addDecodeBase64AdditionalAccessorForSelector:@selector(decodedUserData) propertyName:@"userData"];
		[self UA_addEncodeBase64AdditionalAccessorForSelector:@selector(setDecodedUserData:) propertyName:@"userData"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(blockDeviceMappingAtIndex:) propertyName:@"blockDeviceMappings"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(groupAtIndex:) propertyName:@"groups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addBlockDeviceMapping:) propertyName:@"blockDeviceMappings"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGroup:) propertyName:@"groups"];
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
        @"sourceDestCheck": @"SourceDestCheck.Value",
        @"disableApiTermination": @"DisableApiTermination.Value",
        @"instanceType": @"InstanceType.Value",
        @"kernel": @"Kernel",
        @"ramdisk": @"Ramdisk",
        @"userData": @"UserData.Value",
        @"decodedUserData": [NSNull null],
        @"instanceInitiatedShutdownBehavior": @"InstanceInitiatedShutdownBehavior.Value",
        @"groups": @"GroupId",
        @"ebsOptimized": @"EbsOptimized",
        @"sriovNetSupport": @"SriovNetSupport"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)blockDeviceMappingsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2InstanceBlockDeviceMappingSpecification class]];
}

+ (NSValueTransformer *)kernelJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2Kernel class]];
}

+ (NSValueTransformer *)ramdiskJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2Ramdisk class]];
}

+ (NSValueTransformer *)instanceInitiatedShutdownBehaviorJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceInitiatedShutdownBehaviorStop), @(UAEC2InstanceInitiatedShutdownBehaviorTerminate) ]
                                               stringValues:@[ @"stop", @"terminate" ]
                                               unknownValue:@(UAEC2InstanceInitiatedShutdownBehaviorUnknown)];
}

+ (NSValueTransformer *)ebsOptimizedJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2EBSOptimized class]];
}

+ (NSValueTransformer *)sriovNetSupportJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2SriovNetSupport class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceBlockDeviceMappingSpecification class]];
}

+ (NSValueTransformer *)sourceDestCheckQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)disableApiTerminationQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)kernelQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2Kernel class]];
}

+ (NSValueTransformer *)ramdiskQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2Ramdisk class]];
}

+ (NSValueTransformer *)instanceInitiatedShutdownBehaviorQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceInitiatedShutdownBehaviorStop), @(UAEC2InstanceInitiatedShutdownBehaviorTerminate) ]
                                               stringValues:@[ @"stop", @"terminate" ]
                                               unknownValue:@(UAEC2InstanceInitiatedShutdownBehaviorUnknown)];
}

+ (NSValueTransformer *)ebsOptimizedQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2EBSOptimized class]];
}

+ (NSValueTransformer *)sriovNetSupportQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2SriovNetSupport class]];
}

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop