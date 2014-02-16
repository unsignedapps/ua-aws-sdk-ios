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
#import "UAEC2InstanceLicenseSpecification.h"
#import "UAEC2InstanceNetworkInterfaceSpecification.h"
#import "UAEC2IAMInstanceProfileSpecification.h"

@interface UAEC2RunInstancesRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2RunInstancesRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, imageID=_imageID, minCount=_minCount, maxCount=_maxCount, keyName=_keyName, securityGroups=_securityGroups, securityGroupIDs=_securityGroupIDs, userData=_userData, instanceType=_instanceType, placement=_placement, kernelID=_kernelID, ramdiskID=_ramdiskID, blockDeviceMappings=_blockDeviceMappings, monitoringEnabled=_monitoringEnabled, subnetID=_subnetID, disableApiTermination=_disableApiTermination, instanceInitiatedShutdownBehavior=_instanceInitiatedShutdownBehavior, license=_license, privateIPAddress=_privateIPAddress, clientToken=_clientToken, additionalInfo=_additionalInfo, networkInterfaces=_networkInterfaces, iamInstanceProfile=_iamInstanceProfile, ebsOptimized=_ebsOptimized;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RunInstances"];
		[self setVersion:@"2013-10-15"];
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
        @"license": @"License",
        @"privateIPAddress": @"PrivateIpAddress",
        @"clientToken": @"ClientToken",
        @"additionalInfo": @"AdditionalInfo",
        @"networkInterfaces": @"NetworkInterface",
        @"iamInstanceProfile": @"IamInstanceProfile",
        @"ebsOptimized": @"EbsOptimized"
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

+ (NSValueTransformer *)placementJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)blockDeviceMappingsJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)licenseJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2InstanceLicenseSpecification class]];
}

+ (NSValueTransformer *)networkInterfacesJSONTransformer
{
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceSpecification class]];
}

+ (NSValueTransformer *)iamInstanceProfileJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2IAMInstanceProfileSpecification class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)placementQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)blockDeviceMappingsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2BlockDeviceMapping class]];
}

+ (NSValueTransformer *)monitoringEnabledQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)disableApiTerminationQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)licenseQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2InstanceLicenseSpecification class]];
}

+ (NSValueTransformer *)networkInterfacesQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceNetworkInterfaceSpecification class]];
}

+ (NSValueTransformer *)iamInstanceProfileQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2IAMInstanceProfileSpecification class]];
}

+ (NSValueTransformer *)ebsOptimizedQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
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
