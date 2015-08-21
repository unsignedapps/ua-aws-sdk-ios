//
//  UARDSPendingModifiedValues.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSPendingModifiedValues.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSPendingModifiedValues

@synthesize dBInstanceClass=_dBInstanceClass, allocatedStorage=_allocatedStorage, masterUserPassword=_masterUserPassword, port=_port, backupRetentionPeriod=_backupRetentionPeriod, multiAZ=_multiAZ, engineVersion=_engineVersion, iops=_iops, dBInstanceIdentifier=_dBInstanceIdentifier, storageType=_storageType, cACertificateIdentifier=_cACertificateIdentifier;

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
        @"dBInstanceClass": @"Rds:DBInstanceClass",
        @"allocatedStorage": @"Rds:AllocatedStorage",
        @"masterUserPassword": @"Rds:MasterUserPassword",
        @"port": @"Rds:Port",
        @"backupRetentionPeriod": @"Rds:BackupRetentionPeriod",
        @"multiAZ": @"Rds:MultiAZ",
        @"engineVersion": @"Rds:EngineVersion",
        @"iops": @"Rds:Iops",
        @"dBInstanceIdentifier": @"Rds:DBInstanceIdentifier",
        @"storageType": @"Rds:StorageType",
        @"cACertificateIdentifier": @"Rds:CACertificateIdentifier"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)storageTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSStorageTypeStandard), @(UARDSStorageTypeGP2), @(UARDSStorageTypeIO1) ]
                                               stringValues:@[ @"standard", @"gp2", @"io1" ]
                                               unknownValue:@(UARDSStorageTypeUnknown)];
}

+ (NSValueTransformer *)allocatedStorageXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)portXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)backupRetentionPeriodXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)multiAZXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)iopsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)storageTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSStorageTypeStandard), @(UARDSStorageTypeGP2), @(UARDSStorageTypeIO1) ]
                                               stringValues:@[ @"standard", @"gp2", @"io1" ]
                                               unknownValue:@(UARDSStorageTypeUnknown)];
}

@end

#pragma clang diagnostic pop