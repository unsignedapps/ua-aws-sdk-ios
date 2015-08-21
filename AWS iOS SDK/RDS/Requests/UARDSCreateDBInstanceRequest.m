//
//  UARDSCreateDBInstanceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSCreateDBInstanceRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBInstanceResponse.h"
#import "UARDSTag.h"

@interface UARDSCreateDBInstanceRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSCreateDBInstanceRequest

@synthesize action=_action, version=_version, dBName=_dBName, dBInstanceIdentifier=_dBInstanceIdentifier, allocatedStorage=_allocatedStorage, dBInstanceClass=_dBInstanceClass, engine=_engine, masterUsername=_masterUsername, masterUserPassword=_masterUserPassword, dBSecurityGroups=_dBSecurityGroups, vpcSecurityGroupIDs=_vpcSecurityGroupIDs, availabilityZone=_availabilityZone, dBSubnetGroupName=_dBSubnetGroupName, preferredMaintenanceWindow=_preferredMaintenanceWindow, dBParameterGroupName=_dBParameterGroupName, backupRetentionPeriod=_backupRetentionPeriod, preferredBackupWindow=_preferredBackupWindow, port=_port, multiAZ=_multiAZ, engineVersion=_engineVersion, autoMinorVersionUpgrade=_autoMinorVersionUpgrade, licenseModel=_licenseModel, iops=_iops, optionGroupName=_optionGroupName, characterSetName=_characterSetName, publiclyAccessible=_publiclyAccessible, tags=_tags, storageType=_storageType, tdeCredentialARN=_tdeCredentialARN, tdeCredentialPassword=_tdeCredentialPassword, storageEncrypted=_storageEncrypted, kmsKeyID=_kmsKeyID;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateDBInstance"];
		[self setVersion:@"2014-10-31"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBSecurityGroupAtIndex:) propertyName:@"dBSecurityGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(vpcSecurityGroupIDAtIndex:) propertyName:@"vpcSecurityGroupIDs"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBSecurityGroup:) propertyName:@"dBSecurityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addVPCSecurityGroupID:) propertyName:@"vpcSecurityGroupIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTag:) propertyName:@"tags"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UARDSDBInstanceResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSRequest queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dBName": @"DBName",
        @"dBInstanceIdentifier": @"DBInstanceIdentifier",
        @"allocatedStorage": @"AllocatedStorage",
        @"dBInstanceClass": @"DBInstanceClass",
        @"engine": @"Engine",
        @"masterUsername": @"MasterUsername",
        @"masterUserPassword": @"MasterUserPassword",
        @"dBSecurityGroups": @"DBSecurityGroups.member",
        @"vpcSecurityGroupIDs": @"VpcSecurityGroupIds.member",
        @"availabilityZone": @"AvailabilityZone",
        @"dBSubnetGroupName": @"DBSubnetGroupName",
        @"preferredMaintenanceWindow": @"PreferredMaintenanceWindow",
        @"dBParameterGroupName": @"DBParameterGroupName",
        @"backupRetentionPeriod": @"BackupRetentionPeriod",
        @"preferredBackupWindow": @"PreferredBackupWindow",
        @"port": @"Port",
        @"multiAZ": @"MultiAZ",
        @"engineVersion": @"EngineVersion",
        @"autoMinorVersionUpgrade": @"AutoMinorVersionUpgrade",
        @"licenseModel": @"LicenseModel",
        @"iops": @"Iops",
        @"optionGroupName": @"OptionGroupName",
        @"characterSetName": @"CharacterSetName",
        @"publiclyAccessible": @"PubliclyAccessible",
        @"tags": @"Tags.member",
        @"storageType": @"StorageType",
        @"tdeCredentialARN": @"TdeCredentialArn",
        @"tdeCredentialPassword": @"TdeCredentialPassword",
        @"storageEncrypted": @"StorageEncrypted",
        @"kmsKeyID": @"KmsKeyId"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)engineJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSEngineMySQL), @(UARDSEngineOrACLeSe1), @(UARDSEngineOrACLeSe), @(UARDSEngineOrACLeEe), @(UARDSEngineSqlserverEe), @(UARDSEngineSqlserverSe), @(UARDSEngineSqlserverEx), @(UARDSEngineSqlserverWeb), @(UARDSEnginePostgres) ]
                                               stringValues:@[ @"MySQL", @"oracle-se1", @"oracle-se", @"oracle-ee", @"sqlserver-ee", @"sqlserver-se", @"sqlserver-ex", @"sqlserver-web", @"postgres" ]
                                               unknownValue:@(UARDSEngineUnknown)];
}

+ (NSValueTransformer *)licenseModelJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSLicenseModelLicenseIncluded), @(UARDSLicenseModelBringYourOwnLicense), @(UARDSLicenseModelGeneralPublicLicense) ]
                                               stringValues:@[ @"license-included", @"bring-your-own-license", @"general-public-license" ]
                                               unknownValue:@(UARDSLicenseModelUnknown)];
}

+ (NSValueTransformer *)tagsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UARDSTag class]];
}

+ (NSValueTransformer *)storageTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSStorageTypeStandard), @(UARDSStorageTypeGP2), @(UARDSStorageTypeIO1) ]
                                               stringValues:@[ @"standard", @"gp2", @"io1" ]
                                               unknownValue:@(UARDSStorageTypeUnknown)];
}

+ (NSValueTransformer *)engineQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSEngineMySQL), @(UARDSEngineOrACLeSe1), @(UARDSEngineOrACLeSe), @(UARDSEngineOrACLeEe), @(UARDSEngineSqlserverEe), @(UARDSEngineSqlserverSe), @(UARDSEngineSqlserverEx), @(UARDSEngineSqlserverWeb), @(UARDSEnginePostgres) ]
                                               stringValues:@[ @"MySQL", @"oracle-se1", @"oracle-se", @"oracle-ee", @"sqlserver-ee", @"sqlserver-se", @"sqlserver-ex", @"sqlserver-web", @"postgres" ]
                                               unknownValue:@(UARDSEngineUnknown)];
}

+ (NSValueTransformer *)licenseModelQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSLicenseModelLicenseIncluded), @(UARDSLicenseModelBringYourOwnLicense), @(UARDSLicenseModelGeneralPublicLicense) ]
                                               stringValues:@[ @"license-included", @"bring-your-own-license", @"general-public-license" ]
                                               unknownValue:@(UARDSLicenseModelUnknown)];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSTag class]];
}

+ (NSValueTransformer *)storageTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSStorageTypeStandard), @(UARDSStorageTypeGP2), @(UARDSStorageTypeIO1) ]
                                               stringValues:@[ @"standard", @"gp2", @"io1" ]
                                               unknownValue:@(UARDSStorageTypeUnknown)];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSCreateDBInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSCreateDBInstanceRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSCreateDBInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSCreateDBInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop