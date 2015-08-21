//
//  UARDSDBInstance.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBInstance.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSEndpoint.h"
#import "UARDSDBInstanceSecurityGroup.h"
#import "UARDSVPCSecurityGroup.h"
#import "UARDSDBInstanceParameterGroup.h"
#import "UARDSDBInstanceSubnetGroup.h"
#import "UARDSPendingModifiedValues.h"
#import "UARDSOptionGroupMembership.h"
#import "UARDSStatusInfo.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBInstance

@synthesize dBInstanceIdentifier=_dBInstanceIdentifier, dBInstanceClass=_dBInstanceClass, engine=_engine, dBInstanceStatus=_dBInstanceStatus, masterUsername=_masterUsername, dBName=_dBName, endpoint=_endpoint, allocatedStorage=_allocatedStorage, instanceCreateTime=_instanceCreateTime, preferredBackupWindow=_preferredBackupWindow, backupRetentionPeriod=_backupRetentionPeriod, dBSecurityGroups=_dBSecurityGroups, vpcSecurityGroups=_vpcSecurityGroups, dBParameterGroups=_dBParameterGroups, availabilityZone=_availabilityZone, dBSubnetGroup=_dBSubnetGroup, preferredMaintenanceWindow=_preferredMaintenanceWindow, pendingModifiedValues=_pendingModifiedValues, latestRestorableTime=_latestRestorableTime, multiAZ=_multiAZ, engineVersion=_engineVersion, autoMinorVersionUpgrade=_autoMinorVersionUpgrade, readReplicaSourceDBInstanceIdentifier=_readReplicaSourceDBInstanceIdentifier, readReplicaDBInstanceIdentifiers=_readReplicaDBInstanceIdentifiers, licenseModel=_licenseModel, iops=_iops, optionGroupMemberships=_optionGroupMemberships, characterSetName=_characterSetName, secondaryAvailabilityZone=_secondaryAvailabilityZone, publiclyAccessible=_publiclyAccessible, statusInfos=_statusInfos, storageType=_storageType, tdeCredentialARN=_tdeCredentialARN, storageEncrypted=_storageEncrypted, kmsKeyID=_kmsKeyID, dbiResourceID=_dbiResourceID, cACertificateIdentifier=_cACertificateIdentifier;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBSecurityGroupAtIndex:) propertyName:@"dBSecurityGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(vpcSecurityGroupAtIndex:) propertyName:@"vpcSecurityGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBParameterGroupAtIndex:) propertyName:@"dBParameterGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(readReplicaDBInstanceIdentifierAtIndex:) propertyName:@"readReplicaDBInstanceIdentifiers"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(optionGroupMembershipAtIndex:) propertyName:@"optionGroupMemberships"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(statusInfoAtIndex:) propertyName:@"statusInfos"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBSecurityGroup:) propertyName:@"dBSecurityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addVPCSecurityGroup:) propertyName:@"vpcSecurityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBParameterGroup:) propertyName:@"dBParameterGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addReadReplicaDBInstanceIdentifier:) propertyName:@"readReplicaDBInstanceIdentifiers"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOptionGroupMembership:) propertyName:@"optionGroupMemberships"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addStatusInfo:) propertyName:@"statusInfos"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dBInstanceIdentifier": @"Rds:DBInstanceIdentifier",
        @"dBInstanceClass": @"Rds:DBInstanceClass",
        @"engine": @"Rds:Engine",
        @"dBInstanceStatus": @"Rds:DBInstanceStatus",
        @"masterUsername": @"Rds:MasterUsername",
        @"dBName": @"Rds:DBName",
        @"endpoint": @"Rds:Endpoint",
        @"allocatedStorage": @"Rds:AllocatedStorage",
        @"instanceCreateTime": @"Rds:InstanceCreateTime",
        @"preferredBackupWindow": @"Rds:PreferredBackupWindow",
        @"backupRetentionPeriod": @"Rds:BackupRetentionPeriod",
        @"dBSecurityGroups": @"Rds:DBSecurityGroups/Rds:DBSecurityGroup",
        @"vpcSecurityGroups": @"Rds:VpcSecurityGroups/Rds:VpcSecurityGroupMembership",
        @"dBParameterGroups": @"Rds:DBParameterGroups/Rds:DBParameterGroup",
        @"availabilityZone": @"Rds:AvailabilityZone",
        @"dBSubnetGroup": @"Rds:DBSubnetGroup",
        @"preferredMaintenanceWindow": @"Rds:PreferredMaintenanceWindow",
        @"pendingModifiedValues": @"Rds:PendingModifiedValues",
        @"latestRestorableTime": @"Rds:LatestRestorableTime",
        @"multiAZ": @"Rds:MultiAZ",
        @"engineVersion": @"Rds:EngineVersion",
        @"autoMinorVersionUpgrade": @"Rds:AutoMinorVersionUpgrade",
        @"readReplicaSourceDBInstanceIdentifier": @"Rds:ReadReplicaSourceDBInstanceIdentifier",
        @"readReplicaDBInstanceIdentifiers": @"Rds:ReadReplicaDBInstanceIdentifiers/Rds:ReadReplicaDBInstanceIdentifier",
        @"licenseModel": @"Rds:LicenseModel",
        @"iops": @"Rds:Iops",
        @"optionGroupMemberships": @"Rds:OptionGroupMemberships/Rds:OptionGroupMembership",
        @"characterSetName": @"Rds:CharacterSetName",
        @"secondaryAvailabilityZone": @"Rds:SecondaryAvailabilityZone",
        @"publiclyAccessible": @"Rds:PubliclyAccessible",
        @"statusInfos": @"Rds:StatusInfos/Rds:DBInstanceStatusInfo",
        @"storageType": @"Rds:StorageType",
        @"tdeCredentialARN": @"Rds:TdeCredentialArn",
        @"storageEncrypted": @"Rds:StorageEncrypted",
        @"kmsKeyID": @"Rds:KmsKeyId",
        @"dbiResourceID": @"Rds:DbiResourceId",
        @"cACertificateIdentifier": @"Rds:CACertificateIdentifier"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)engineQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSEngineMySQL), @(UARDSEngineOrACLeSe1), @(UARDSEngineOrACLeSe), @(UARDSEngineOrACLeEe), @(UARDSEngineSqlserverEe), @(UARDSEngineSqlserverSe), @(UARDSEngineSqlserverEx), @(UARDSEngineSqlserverWeb), @(UARDSEnginePostgres) ]
                                               stringValues:@[ @"MySQL", @"oracle-se1", @"oracle-se", @"oracle-ee", @"sqlserver-ee", @"sqlserver-se", @"sqlserver-ex", @"sqlserver-web", @"postgres" ]
                                               unknownValue:@(UARDSEngineUnknown)];
}

+ (NSValueTransformer *)endpointQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UARDSEndpoint class]];
}

+ (NSValueTransformer *)instanceCreateTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)dBSecurityGroupsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSDBInstanceSecurityGroup class]];
}

+ (NSValueTransformer *)vpcSecurityGroupsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSVPCSecurityGroup class]];
}

+ (NSValueTransformer *)dBParameterGroupsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSDBInstanceParameterGroup class]];
}

+ (NSValueTransformer *)dBSubnetGroupQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UARDSDBInstanceSubnetGroup class]];
}

+ (NSValueTransformer *)pendingModifiedValuesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UARDSPendingModifiedValues class]];
}

+ (NSValueTransformer *)latestRestorableTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)licenseModelQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSLicenseModelLicenseIncluded), @(UARDSLicenseModelBringYourOwnLicense), @(UARDSLicenseModelGeneralPublicLicense) ]
                                               stringValues:@[ @"license-included", @"bring-your-own-license", @"general-public-license" ]
                                               unknownValue:@(UARDSLicenseModelUnknown)];
}

+ (NSValueTransformer *)optionGroupMembershipsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSOptionGroupMembership class]];
}

+ (NSValueTransformer *)statusInfosQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSStatusInfo class]];
}

+ (NSValueTransformer *)storageTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSStorageTypeStandard), @(UARDSStorageTypeGP2), @(UARDSStorageTypeIO1) ]
                                               stringValues:@[ @"standard", @"gp2", @"io1" ]
                                               unknownValue:@(UARDSStorageTypeUnknown)];
}

+ (NSValueTransformer *)engineXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSEngineMySQL), @(UARDSEngineOrACLeSe1), @(UARDSEngineOrACLeSe), @(UARDSEngineOrACLeEe), @(UARDSEngineSqlserverEe), @(UARDSEngineSqlserverSe), @(UARDSEngineSqlserverEx), @(UARDSEngineSqlserverWeb), @(UARDSEnginePostgres) ]
                                               stringValues:@[ @"MySQL", @"oracle-se1", @"oracle-se", @"oracle-ee", @"sqlserver-ee", @"sqlserver-se", @"sqlserver-ex", @"sqlserver-web", @"postgres" ]
                                               unknownValue:@(UARDSEngineUnknown)];
}

+ (NSValueTransformer *)endpointXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSEndpoint class]];
}

+ (NSValueTransformer *)allocatedStorageXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)instanceCreateTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)backupRetentionPeriodXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)dBSecurityGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSDBInstanceSecurityGroup class]];
}

+ (NSValueTransformer *)vpcSecurityGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSVPCSecurityGroup class]];
}

+ (NSValueTransformer *)dBParameterGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSDBInstanceParameterGroup class]];
}

+ (NSValueTransformer *)dBSubnetGroupXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSDBInstanceSubnetGroup class]];
}

+ (NSValueTransformer *)pendingModifiedValuesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSPendingModifiedValues class]];
}

+ (NSValueTransformer *)latestRestorableTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)multiAZXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)autoMinorVersionUpgradeXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)readReplicaDBInstanceIdentifiersXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)licenseModelXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSLicenseModelLicenseIncluded), @(UARDSLicenseModelBringYourOwnLicense), @(UARDSLicenseModelGeneralPublicLicense) ]
                                               stringValues:@[ @"license-included", @"bring-your-own-license", @"general-public-license" ]
                                               unknownValue:@(UARDSLicenseModelUnknown)];
}

+ (NSValueTransformer *)iopsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)optionGroupMembershipsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSOptionGroupMembership class]];
}

+ (NSValueTransformer *)publiclyAccessibleXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)statusInfosXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSStatusInfo class]];
}

+ (NSValueTransformer *)storageTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSStorageTypeStandard), @(UARDSStorageTypeGP2), @(UARDSStorageTypeIO1) ]
                                               stringValues:@[ @"standard", @"gp2", @"io1" ]
                                               unknownValue:@(UARDSStorageTypeUnknown)];
}

+ (NSValueTransformer *)storageEncryptedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop