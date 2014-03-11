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
        @"userData": @"UserData.Value",
        @"decodedUserData": [NSNull null],
        @"instanceInitiatedShutdownBehavior": @"InstanceInitiatedShutdownBehavior.Value",
        @"groups": @"GroupId",
        @"ebsOptimized": @"EbsOptimized",
        @"sriovNetSupport": @"SriovNetSupport"
    }];
    return [keyPaths copy];
}

- (NSString *)decodedUserData
{
    if (self.userData == nil)
        return nil;
    
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self.userData options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (void)setDecodedUserData:(NSString *)decodedUserData
{
    if (decodedUserData == nil)
        [self setUserData:nil];
    else
		[self setUserData:[[decodedUserData dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:kNilOptions]];
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

- (void)setInstanceID:(NSString *)instanceID
{
	_instanceID = instanceID;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceID"])
		[self.UA_dirtyProperties addObject:@"instanceID"];
}

- (void)setAttribute:(NSString *)attribute
{
	_attribute = attribute;
	
	if (![self.UA_dirtyProperties containsObject:@"attribute"])
		[self.UA_dirtyProperties addObject:@"attribute"];
}

- (void)setValue:(NSString *)value
{
	_value = value;
	
	if (![self.UA_dirtyProperties containsObject:@"value"])
		[self.UA_dirtyProperties addObject:@"value"];
}

- (void)setBlockDeviceMappings:(NSMutableArray *)blockDeviceMappings
{
	_blockDeviceMappings = blockDeviceMappings;
	
	if (![self.UA_dirtyProperties containsObject:@"blockDeviceMappings"])
		[self.UA_dirtyProperties addObject:@"blockDeviceMappings"];
}

- (void)setSourceDestCheck:(UAEC2SourceDestCheck *)sourceDestCheck
{
	_sourceDestCheck = sourceDestCheck;
	
	if (![self.UA_dirtyProperties containsObject:@"sourceDestCheck"])
		[self.UA_dirtyProperties addObject:@"sourceDestCheck"];
}

- (void)setDisableApiTermination:(BOOL)disableApiTermination
{
	_disableApiTermination = disableApiTermination;
	
	if (![self.UA_dirtyProperties containsObject:@"disableApiTermination"])
		[self.UA_dirtyProperties addObject:@"disableApiTermination"];
}

- (void)setInstanceType:(NSString *)instanceType
{
	_instanceType = instanceType;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceType"])
		[self.UA_dirtyProperties addObject:@"instanceType"];
}

- (void)setKernel:(UAEC2Kernel *)kernel
{
	_kernel = kernel;
	
	if (![self.UA_dirtyProperties containsObject:@"kernel"])
		[self.UA_dirtyProperties addObject:@"kernel"];
}

- (void)setRamdisk:(UAEC2Ramdisk *)ramdisk
{
	_ramdisk = ramdisk;
	
	if (![self.UA_dirtyProperties containsObject:@"ramdisk"])
		[self.UA_dirtyProperties addObject:@"ramdisk"];
}

- (void)setUserData:(NSString *)userData
{
	_userData = userData;
	
	if (![self.UA_dirtyProperties containsObject:@"userData"])
		[self.UA_dirtyProperties addObject:@"userData"];
}

- (void)setInstanceInitiatedShutdownBehavior:(UAEC2InstanceInitiatedShutdownBehavior)instanceInitiatedShutdownBehavior
{
	_instanceInitiatedShutdownBehavior = instanceInitiatedShutdownBehavior;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceInitiatedShutdownBehavior"])
		[self.UA_dirtyProperties addObject:@"instanceInitiatedShutdownBehavior"];
}

- (void)setGroups:(NSMutableArray *)groups
{
	_groups = groups;
	
	if (![self.UA_dirtyProperties containsObject:@"groups"])
		[self.UA_dirtyProperties addObject:@"groups"];
}

- (void)setEbsOptimized:(UAEC2EBSOptimized *)ebsOptimized
{
	_ebsOptimized = ebsOptimized;
	
	if (![self.UA_dirtyProperties containsObject:@"ebsOptimized"])
		[self.UA_dirtyProperties addObject:@"ebsOptimized"];
}

- (void)setSriovNetSupport:(UAEC2SriovNetSupport *)sriovNetSupport
{
	_sriovNetSupport = sriovNetSupport;
	
	if (![self.UA_dirtyProperties containsObject:@"sriovNetSupport"])
		[self.UA_dirtyProperties addObject:@"sriovNetSupport"];
}

+ (NSValueTransformer *)blockDeviceMappingsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2InstanceBlockDeviceMappingSpecification class]];
}

+ (NSValueTransformer *)sourceDestCheckJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2SourceDestCheck class]];
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
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"stop"])
		    return @(UAEC2InstanceInitiatedShutdownBehaviorStop);
		if ([value isEqualToString:@"terminate"])
		    return @(UAEC2InstanceInitiatedShutdownBehaviorTerminate);

		return @(UAEC2InstanceInitiatedShutdownBehaviorUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceInitiatedShutdownBehavior castValue = (UAEC2InstanceInitiatedShutdownBehavior)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceInitiatedShutdownBehaviorStop:
			    return @"stop";
			case UAEC2InstanceInitiatedShutdownBehaviorTerminate:
			    return @"terminate";

			case UAEC2InstanceInitiatedShutdownBehaviorUnknown:
			default:
				return nil;
        }
    }];
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
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2SourceDestCheck class]];
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
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"stop"])
		    return @(UAEC2InstanceInitiatedShutdownBehaviorStop);
		if ([value isEqualToString:@"terminate"])
		    return @(UAEC2InstanceInitiatedShutdownBehaviorTerminate);

		return @(UAEC2InstanceInitiatedShutdownBehaviorUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceInitiatedShutdownBehavior castValue = (UAEC2InstanceInitiatedShutdownBehavior)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceInitiatedShutdownBehaviorStop:
			    return @"stop";
			case UAEC2InstanceInitiatedShutdownBehaviorTerminate:
			    return @"terminate";

			case UAEC2InstanceInitiatedShutdownBehaviorUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)ebsOptimizedQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2EBSOptimized class]];
}

+ (NSValueTransformer *)sriovNetSupportQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2SriovNetSupport class]];
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
