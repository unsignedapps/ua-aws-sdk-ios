//
//  UARDSDBSnapshot.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBSnapshot.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBSnapshot

@synthesize dBSnapshotIdentifier=_dBSnapshotIdentifier, dBInstanceIdentifier=_dBInstanceIdentifier, snapshotCreateTime=_snapshotCreateTime, engine=_engine, allocatedStorage=_allocatedStorage, status=_status, port=_port, availabilityZone=_availabilityZone, vpcID=_vpcID, instanceCreateTime=_instanceCreateTime, masterUsername=_masterUsername, engineVersion=_engineVersion, licenseModel=_licenseModel, snapshotType=_snapshotType, iops=_iops, optionGroupName=_optionGroupName, percentProgress=_percentProgress, sourceRegion=_sourceRegion, storageType=_storageType, tdeCredentialARN=_tdeCredentialARN, encrypted=_encrypted, kmsKeyID=_kmsKeyID;

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
        @"dBSnapshotIdentifier": @"Rds:DBSnapshotIdentifier",
        @"dBInstanceIdentifier": @"Rds:DBInstanceIdentifier",
        @"snapshotCreateTime": @"Rds:SnapshotCreateTime",
        @"engine": @"Rds:Engine",
        @"allocatedStorage": @"Rds:AllocatedStorage",
        @"status": @"Rds:Status",
        @"port": @"Rds:Port",
        @"availabilityZone": @"Rds:AvailabilityZone",
        @"vpcID": @"Rds:VpcId",
        @"instanceCreateTime": @"Rds:InstanceCreateTime",
        @"masterUsername": @"Rds:MasterUsername",
        @"engineVersion": @"Rds:EngineVersion",
        @"licenseModel": @"Rds:LicenseModel",
        @"snapshotType": @"Rds:SnapshotType",
        @"iops": @"Rds:Iops",
        @"optionGroupName": @"Rds:OptionGroupName",
        @"percentProgress": @"Rds:PercentProgress",
        @"sourceRegion": @"Rds:SourceRegion",
        @"storageType": @"Rds:StorageType",
        @"tdeCredentialARN": @"Rds:TdeCredentialArn",
        @"encrypted": @"Rds:Encrypted",
        @"kmsKeyID": @"Rds:KmsKeyId"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)snapshotCreateTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)engineQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSEngineMySQL), @(UARDSEngineOrACLeSe1), @(UARDSEngineOrACLeSe), @(UARDSEngineOrACLeEe), @(UARDSEngineSqlserverEe), @(UARDSEngineSqlserverSe), @(UARDSEngineSqlserverEx), @(UARDSEngineSqlserverWeb), @(UARDSEnginePostgres) ]
                                               stringValues:@[ @"MySQL", @"oracle-se1", @"oracle-se", @"oracle-ee", @"sqlserver-ee", @"sqlserver-se", @"sqlserver-ex", @"sqlserver-web", @"postgres" ]
                                               unknownValue:@(UARDSEngineUnknown)];
}

+ (NSValueTransformer *)instanceCreateTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)licenseModelQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSLicenseModelLicenseIncluded), @(UARDSLicenseModelBringYourOwnLicense), @(UARDSLicenseModelGeneralPublicLicense) ]
                                               stringValues:@[ @"license-included", @"bring-your-own-license", @"general-public-license" ]
                                               unknownValue:@(UARDSLicenseModelUnknown)];
}

+ (NSValueTransformer *)storageTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSStorageTypeStandard), @(UARDSStorageTypeGP2), @(UARDSStorageTypeIO1) ]
                                               stringValues:@[ @"standard", @"gp2", @"io1" ]
                                               unknownValue:@(UARDSStorageTypeUnknown)];
}

+ (NSValueTransformer *)snapshotCreateTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)engineXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSEngineMySQL), @(UARDSEngineOrACLeSe1), @(UARDSEngineOrACLeSe), @(UARDSEngineOrACLeEe), @(UARDSEngineSqlserverEe), @(UARDSEngineSqlserverSe), @(UARDSEngineSqlserverEx), @(UARDSEngineSqlserverWeb), @(UARDSEnginePostgres) ]
                                               stringValues:@[ @"MySQL", @"oracle-se1", @"oracle-se", @"oracle-ee", @"sqlserver-ee", @"sqlserver-se", @"sqlserver-ex", @"sqlserver-web", @"postgres" ]
                                               unknownValue:@(UARDSEngineUnknown)];
}

+ (NSValueTransformer *)allocatedStorageXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)portXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)instanceCreateTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
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

+ (NSValueTransformer *)percentProgressXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)storageTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSStorageTypeStandard), @(UARDSStorageTypeGP2), @(UARDSStorageTypeIO1) ]
                                               stringValues:@[ @"standard", @"gp2", @"io1" ]
                                               unknownValue:@(UARDSStorageTypeUnknown)];
}

+ (NSValueTransformer *)encryptedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop