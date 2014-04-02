//
//  UAASCreateLaunchConfigurationRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASCreateLaunchConfigurationRequest.h"
#import "UAASCreateLaunchConfigurationResponse.h"
#import "UAASBlockDeviceMapping.h"

@interface UAASCreateLaunchConfigurationRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAASCreateLaunchConfigurationRequest

@synthesize action=_action, version=_version, launchConfigurationName=_launchConfigurationName, imageID=_imageID, keyName=_keyName, securityGroups=_securityGroups, userData=_userData, instanceID=_instanceID, instanceType=_instanceType, kernelID=_kernelID, ramdiskID=_ramdiskID, blockDeviceMappings=_blockDeviceMappings, instanceMonitoringEnabled=_instanceMonitoringEnabled, spotPrice=_spotPrice, iamInstanceProfile=_iamInstanceProfile, ebsOptimized=_ebsOptimized, associatePublicIPAddress=_associatePublicIPAddress;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateLaunchConfiguration"];
		[self setVersion:@"2011-01-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAASCreateLaunchConfigurationResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"launchConfigurationName": @"LaunchConfigurationName",
        @"imageID": @"ImageId",
        @"keyName": @"KeyName",
        @"securityGroups": @"SecurityGroups.member",
        @"userData": @"UserData",
        @"instanceID": @"InstanceId",
        @"instanceType": @"InstanceType",
        @"kernelID": @"KernelId",
        @"ramdiskID": @"RamdiskId",
        @"blockDeviceMappings": @"BlockDeviceMappings.member",
        @"instanceMonitoringEnabled": @"InstanceMonitoring.Enabled",
        @"spotPrice": @"SpotPrice",
        @"iamInstanceProfile": @"IamInstanceProfile",
        @"ebsOptimized": @"EbsOptimized",
        @"associatePublicIPAddress": @"AssociatePublicIpAddress"
    }];
    return [keyPaths copy];
}

- (NSString *)securityGroupAtIndex:(NSUInteger)index
{
    if (self.securityGroups == nil || index >= ([self.securityGroups count]-1))
        return nil;

    return [self.securityGroups objectAtIndex:index];
}

- (UAASBlockDeviceMapping *)blockDeviceMappingAtIndex:(NSUInteger)index
{
    if (self.blockDeviceMappings == nil || index >= ([self.blockDeviceMappings count]-1))
        return nil;

    return [self.blockDeviceMappings objectAtIndex:index];
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

- (void)setLaunchConfigurationName:(NSString *)launchConfigurationName
{
	_launchConfigurationName = launchConfigurationName;
	
	if (![self.UA_dirtyProperties containsObject:@"launchConfigurationName"])
		[self.UA_dirtyProperties addObject:@"launchConfigurationName"];
}

- (void)setImageID:(NSString *)imageID
{
	_imageID = imageID;
	
	if (![self.UA_dirtyProperties containsObject:@"imageID"])
		[self.UA_dirtyProperties addObject:@"imageID"];
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

- (void)setUserData:(NSString *)userData
{
	_userData = userData;
	
	if (![self.UA_dirtyProperties containsObject:@"userData"])
		[self.UA_dirtyProperties addObject:@"userData"];
}

- (void)setInstanceID:(NSString *)instanceID
{
	_instanceID = instanceID;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceID"])
		[self.UA_dirtyProperties addObject:@"instanceID"];
}

- (void)setInstanceType:(NSString *)instanceType
{
	_instanceType = instanceType;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceType"])
		[self.UA_dirtyProperties addObject:@"instanceType"];
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

- (void)setInstanceMonitoringEnabled:(BOOL)instanceMonitoringEnabled
{
	_instanceMonitoringEnabled = instanceMonitoringEnabled;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceMonitoringEnabled"])
		[self.UA_dirtyProperties addObject:@"instanceMonitoringEnabled"];
}

- (void)setSpotPrice:(NSString *)spotPrice
{
	_spotPrice = spotPrice;
	
	if (![self.UA_dirtyProperties containsObject:@"spotPrice"])
		[self.UA_dirtyProperties addObject:@"spotPrice"];
}

- (void)setIamInstanceProfile:(NSString *)iamInstanceProfile
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

- (void)setAssociatePublicIPAddress:(BOOL)associatePublicIPAddress
{
	_associatePublicIPAddress = associatePublicIPAddress;
	
	if (![self.UA_dirtyProperties containsObject:@"associatePublicIPAddress"])
		[self.UA_dirtyProperties addObject:@"associatePublicIPAddress"];
}

+ (NSValueTransformer *)blockDeviceMappingsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAASBlockDeviceMapping class]];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAASBlockDeviceMapping class]];
}

+ (NSValueTransformer *)instanceMonitoringEnabledQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)ebsOptimizedQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)associatePublicIPAddressQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

- (void)addSecurityGroup:(NSString *)securityGroup
{
	if (self.securityGroups == nil)
		[self setSecurityGroups:[NSMutableArray array]];
	[self.securityGroups addObject:securityGroup];
}

- (void)addBlockDeviceMapping:(UAASBlockDeviceMapping *)blockDeviceMapping
{
	if (self.blockDeviceMappings == nil)
		[self setBlockDeviceMappings:[NSMutableArray array]];
	[self.blockDeviceMappings addObject:blockDeviceMapping];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAASCreateLaunchConfigurationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASCreateLaunchConfigurationRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASCreateLaunchConfigurationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASCreateLaunchConfigurationRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
