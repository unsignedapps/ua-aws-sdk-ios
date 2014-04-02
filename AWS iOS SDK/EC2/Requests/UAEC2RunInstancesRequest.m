//
//  UAEC2RunInstancesRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RunInstancesRequest.h"
#import "UAEC2RunInstancesResponse.h"
#import "UAEC2Placement.h"
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2InstanceNetworkInterfaceSpecification.h"
#import "UAEC2IAMInstanceProfileSpecification.h"

@interface UAEC2RunInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2RunInstancesRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, imageID=_imageID, minCount=_minCount, maxCount=_maxCount, keyName=_keyName, securityGroups=_securityGroups, securityGroupIDs=_securityGroupIDs, userData=_userData, instanceType=_instanceType, placement=_placement, kernelID=_kernelID, ramdiskID=_ramdiskID, blockDeviceMappings=_blockDeviceMappings, monitoringEnabled=_monitoringEnabled, subnetID=_subnetID, disableApiTermination=_disableApiTermination, instanceInitiatedShutdownBehavior=_instanceInitiatedShutdownBehavior, privateIPAddress=_privateIPAddress, clientToken=_clientToken, additionalInfo=_additionalInfo, networkInterfaces=_networkInterfaces, iamInstanceProfile=_iamInstanceProfile, ebsOptimized=_ebsOptimized;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RunInstances"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2RunInstancesResponse class];
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
        @"imageID": @"ImageId",
        @"minCount": @"MinCount",
        @"maxCount": @"MaxCount",
        @"keyName": @"KeyName",
        @"securityGroups": @"SecurityGroup",
        @"securityGroupIDs": @"SecurityGroupId",
        @"userData": @"UserData",
        @"decodedUserData": [NSNull null],
        @"instanceType": @"InstanceType",
        @"placement": @"Placement",
        @"kernelID": @"KernelId",
        @"ramdiskID": @"RamdiskId",
        @"blockDeviceMappings": @"BlockDeviceMapping",
        @"monitoringEnabled": @"Monitoring.Enabled",
        @"subnetID": @"SubnetId",
        @"disableApiTermination": @"DisableApiTermination",
        @"instanceInitiatedShutdownBehavior": @"InstanceInitiatedShutdownBehavior",
        @"privateIPAddress": @"PrivateIpAddress",
        @"clientToken": @"ClientToken",
        @"additionalInfo": @"AdditionalInfo",
        @"networkInterfaces": @"NetworkInterface",
        @"iamInstanceProfile": @"IamInstanceProfile",
        @"ebsOptimized": @"EbsOptimized"
    }];
    return [keyPaths copy];
}

- (NSString *)securityGroupAtIndex:(NSUInteger)index
{
    if (self.securityGroups == nil || index >= ([self.securityGroups count]-1))
        return nil;

    return [self.securityGroups objectAtIndex:index];
}

- (NSString *)securityGroupIDAtIndex:(NSUInteger)index
{
    if (self.securityGroupIDs == nil || index >= ([self.securityGroupIDs count]-1))
        return nil;

    return [self.securityGroupIDs objectAtIndex:index];
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
}- (UAEC2BlockDeviceMapping *)blockDeviceMappingAtIndex:(NSUInteger)index
{
    if (self.blockDeviceMappings == nil || index >= ([self.blockDeviceMappings count]-1))
        return nil;

    return [self.blockDeviceMappings objectAtIndex:index];
}

- (UAEC2InstanceNetworkInterfaceSpecification *)networkInterfaceAtIndex:(NSUInteger)index
{
    if (self.networkInterfaces == nil || index >= ([self.networkInterfaces count]-1))
        return nil;

    return [self.networkInterfaces objectAtIndex:index];
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

- (void)setImageID:(NSString *)imageID
{
	_imageID = imageID;
	
	if (![self.UA_dirtyProperties containsObject:@"imageID"])
		[self.UA_dirtyProperties addObject:@"imageID"];
}

- (void)setMinCount:(NSNumber *)minCount
{
	_minCount = minCount;
	
	if (![self.UA_dirtyProperties containsObject:@"minCount"])
		[self.UA_dirtyProperties addObject:@"minCount"];
}

- (void)setMaxCount:(NSNumber *)maxCount
{
	_maxCount = maxCount;
	
	if (![self.UA_dirtyProperties containsObject:@"maxCount"])
		[self.UA_dirtyProperties addObject:@"maxCount"];
}

- (void)setKeyName:(NSString *)keyName
{
	_keyName = keyName;
	
	if (![self.UA_dirtyProperties containsObject:@"keyName"])
		[self.UA_dirtyProperties addObject:@"keyName"];
}

- (void)setSecurityGroups:(NSMutableArray *)securityGroups
{
	_securityGroups = securityGroups;
	
	if (![self.UA_dirtyProperties containsObject:@"securityGroups"])
		[self.UA_dirtyProperties addObject:@"securityGroups"];
}

- (void)setSecurityGroupIDs:(NSMutableArray *)securityGroupIDs
{
	_securityGroupIDs = securityGroupIDs;
	
	if (![self.UA_dirtyProperties containsObject:@"securityGroupIDs"])
		[self.UA_dirtyProperties addObject:@"securityGroupIDs"];
}

- (void)setUserData:(NSString *)userData
{
	_userData = userData;
	
	if (![self.UA_dirtyProperties containsObject:@"userData"])
		[self.UA_dirtyProperties addObject:@"userData"];
}

- (void)setInstanceType:(NSString *)instanceType
{
	_instanceType = instanceType;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceType"])
		[self.UA_dirtyProperties addObject:@"instanceType"];
}

- (void)setPlacement:(UAEC2Placement *)placement
{
	_placement = placement;
	
	if (![self.UA_dirtyProperties containsObject:@"placement"])
		[self.UA_dirtyProperties addObject:@"placement"];
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

- (void)setBlockDeviceMappings:(NSMutableArray *)blockDeviceMappings
{
	_blockDeviceMappings = blockDeviceMappings;
	
	if (![self.UA_dirtyProperties containsObject:@"blockDeviceMappings"])
		[self.UA_dirtyProperties addObject:@"blockDeviceMappings"];
}

- (void)setMonitoringEnabled:(BOOL)monitoringEnabled
{
	_monitoringEnabled = monitoringEnabled;
	
	if (![self.UA_dirtyProperties containsObject:@"monitoringEnabled"])
		[self.UA_dirtyProperties addObject:@"monitoringEnabled"];
}

- (void)setSubnetID:(NSString *)subnetID
{
	_subnetID = subnetID;
	
	if (![self.UA_dirtyProperties containsObject:@"subnetID"])
		[self.UA_dirtyProperties addObject:@"subnetID"];
}

- (void)setDisableApiTermination:(BOOL)disableApiTermination
{
	_disableApiTermination = disableApiTermination;
	
	if (![self.UA_dirtyProperties containsObject:@"disableApiTermination"])
		[self.UA_dirtyProperties addObject:@"disableApiTermination"];
}

- (void)setInstanceInitiatedShutdownBehavior:(UAEC2InstanceInitiatedShutdownBehavior)instanceInitiatedShutdownBehavior
{
	_instanceInitiatedShutdownBehavior = instanceInitiatedShutdownBehavior;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceInitiatedShutdownBehavior"])
		[self.UA_dirtyProperties addObject:@"instanceInitiatedShutdownBehavior"];
}

- (void)setPrivateIPAddress:(NSString *)privateIPAddress
{
	_privateIPAddress = privateIPAddress;
	
	if (![self.UA_dirtyProperties containsObject:@"privateIPAddress"])
		[self.UA_dirtyProperties addObject:@"privateIPAddress"];
}

- (void)setClientToken:(NSString *)clientToken
{
	_clientToken = clientToken;
	
	if (![self.UA_dirtyProperties containsObject:@"clientToken"])
		[self.UA_dirtyProperties addObject:@"clientToken"];
}

- (void)setAdditionalInfo:(NSString *)additionalInfo
{
	_additionalInfo = additionalInfo;
	
	if (![self.UA_dirtyProperties containsObject:@"additionalInfo"])
		[self.UA_dirtyProperties addObject:@"additionalInfo"];
}

- (void)setNetworkInterfaces:(NSMutableArray *)networkInterfaces
{
	_networkInterfaces = networkInterfaces;
	
	if (![self.UA_dirtyProperties containsObject:@"networkInterfaces"])
		[self.UA_dirtyProperties addObject:@"networkInterfaces"];
}

- (void)setIamInstanceProfile:(UAEC2IAMInstanceProfileSpecification *)iamInstanceProfile
{
	_iamInstanceProfile = iamInstanceProfile;
	
	if (![self.UA_dirtyProperties containsObject:@"iamInstanceProfile"])
		[self.UA_dirtyProperties addObject:@"iamInstanceProfile"];
}

- (void)setEbsOptimized:(BOOL)ebsOptimized
{
	_ebsOptimized = ebsOptimized;
	
	if (![self.UA_dirtyProperties containsObject:@"ebsOptimized"])
		[self.UA_dirtyProperties addObject:@"ebsOptimized"];
}

+ (NSValueTransformer *)placementJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)blockDeviceMappingsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)instanceInitiatedShutdownBehaviorJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceInitiatedShutdownBehaviorStop), @(UAEC2InstanceInitiatedShutdownBehaviorTerminate) ]
                                               stringValues:@[ @"stop", @"terminate" ]
                                               unknownValue:@(UAEC2InstanceInitiatedShutdownBehaviorUnknown)];
}

+ (NSValueTransformer *)networkInterfacesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceSpecification class]];
}

+ (NSValueTransformer *)iamInstanceProfileJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2IAMInstanceProfileSpecification class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)placementQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)monitoringEnabledQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)disableApiTerminationQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)instanceInitiatedShutdownBehaviorQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceInitiatedShutdownBehaviorStop), @(UAEC2InstanceInitiatedShutdownBehaviorTerminate) ]
                                               stringValues:@[ @"stop", @"terminate" ]
                                               unknownValue:@(UAEC2InstanceInitiatedShutdownBehaviorUnknown)];
}

+ (NSValueTransformer *)networkInterfacesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceSpecification class]];
}

+ (NSValueTransformer *)iamInstanceProfileQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2IAMInstanceProfileSpecification class]];
}

+ (NSValueTransformer *)ebsOptimizedQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

- (void)addSecurityGroup:(NSString *)securityGroup
{
	if (self.securityGroups == nil)
		[self setSecurityGroups:[NSMutableArray array]];
	[self.securityGroups addObject:securityGroup];
}

- (void)addSecurityGroupID:(NSString *)securityGroupID
{
	if (self.securityGroupIDs == nil)
		[self setSecurityGroupIDs:[NSMutableArray array]];
	[self.securityGroupIDs addObject:securityGroupID];
}

- (void)addBlockDeviceMapping:(UAEC2BlockDeviceMapping *)blockDeviceMapping
{
	if (self.blockDeviceMappings == nil)
		[self setBlockDeviceMappings:[NSMutableArray array]];
	[self.blockDeviceMappings addObject:blockDeviceMapping];
}

- (void)addNetworkInterface:(UAEC2InstanceNetworkInterfaceSpecification *)networkInterface
{
	if (self.networkInterfaces == nil)
		[self setNetworkInterfaces:[NSMutableArray array]];
	[self.networkInterfaces addObject:networkInterface];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2RunInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2RunInstancesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2RunInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2RunInstancesRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
