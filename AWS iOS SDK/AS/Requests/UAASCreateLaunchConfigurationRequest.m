//
//  UAASCreateLaunchConfigurationRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASCreateLaunchConfigurationRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASCreateLaunchConfigurationResponse.h"
#import "UAASBlockDeviceMapping.h"

@interface UAASCreateLaunchConfigurationRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASCreateLaunchConfigurationRequest

@synthesize action=_action, version=_version, launchConfigurationName=_launchConfigurationName, imageID=_imageID, keyName=_keyName, securityGroups=_securityGroups, userData=_userData, instanceID=_instanceID, instanceType=_instanceType, kernelID=_kernelID, ramdiskID=_ramdiskID, blockDeviceMappings=_blockDeviceMappings, instanceMonitoringEnabled=_instanceMonitoringEnabled, spotPrice=_spotPrice, iamInstanceProfile=_iamInstanceProfile, ebsOptimized=_ebsOptimized, associatePublicIPAddress=_associatePublicIPAddress, placementTenancy=_placementTenancy;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateLaunchConfiguration"];
		[self setVersion:@"2011-01-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(securityGroupAtIndex:) propertyName:@"securityGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(blockDeviceMappingAtIndex:) propertyName:@"blockDeviceMappings"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSecurityGroup:) propertyName:@"securityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addBlockDeviceMapping:) propertyName:@"blockDeviceMappings"];
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
        @"associatePublicIPAddress": @"AssociatePublicIpAddress",
        @"placementTenancy": @"PlacementTenancy"
    }];
    return [keyPaths copy];
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

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop