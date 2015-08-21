//
//  UARDSOrderableDBInstanceOption.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOrderableDBInstanceOption.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSAvailabilityZone.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOrderableDBInstanceOption

@synthesize engine=_engine, engineVersion=_engineVersion, dBInstanceClass=_dBInstanceClass, licenseModel=_licenseModel, availabilityZones=_availabilityZones, multiAZCapable=_multiAZCapable, readReplicaCapable=_readReplicaCapable, vpc=_vpc, supportsStorageEncryption=_supportsStorageEncryption, storageType=_storageType, supportsIops=_supportsIops;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(availabilityZoneAtIndex:) propertyName:@"availabilityZones"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAvailabilityZone:) propertyName:@"availabilityZones"];
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
        @"engine": @"Rds:Engine",
        @"engineVersion": @"Rds:EngineVersion",
        @"dBInstanceClass": @"Rds:DBInstanceClass",
        @"licenseModel": @"Rds:LicenseModel",
        @"availabilityZones": @"Rds:AvailabilityZones/Rds:AvailabilityZone",
        @"multiAZCapable": @"Rds:MultiAZCapable",
        @"readReplicaCapable": @"Rds:ReadReplicaCapable",
        @"vpc": @"Rds:Vpc",
        @"supportsStorageEncryption": @"Rds:SupportsStorageEncryption",
        @"storageType": @"Rds:StorageType",
        @"supportsIops": @"Rds:SupportsIops"
    }];
    return [keyPaths copy];
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

+ (NSValueTransformer *)availabilityZonesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSAvailabilityZone class]];
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

+ (NSValueTransformer *)licenseModelXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSLicenseModelLicenseIncluded), @(UARDSLicenseModelBringYourOwnLicense), @(UARDSLicenseModelGeneralPublicLicense) ]
                                               stringValues:@[ @"license-included", @"bring-your-own-license", @"general-public-license" ]
                                               unknownValue:@(UARDSLicenseModelUnknown)];
}

+ (NSValueTransformer *)availabilityZonesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSAvailabilityZone class]];
}

+ (NSValueTransformer *)multiAZCapableXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)readReplicaCapableXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)vpcXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)supportsStorageEncryptionXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)storageTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSStorageTypeStandard), @(UARDSStorageTypeGP2), @(UARDSStorageTypeIO1) ]
                                               stringValues:@[ @"standard", @"gp2", @"io1" ]
                                               unknownValue:@(UARDSStorageTypeUnknown)];
}

+ (NSValueTransformer *)supportsIopsXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop