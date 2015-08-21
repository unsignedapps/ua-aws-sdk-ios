//
//  UARDSRestoreDBInstanceFromDBSnapshotRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSRestoreDBInstanceFromDBSnapshotRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBInstanceResponse.h"
#import "UARDSTag.h"

@interface UARDSRestoreDBInstanceFromDBSnapshotRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSRestoreDBInstanceFromDBSnapshotRequest

@synthesize action=_action, version=_version, dBInstanceIdentifier=_dBInstanceIdentifier, dBSnapshotIdentifier=_dBSnapshotIdentifier, dBInstanceClass=_dBInstanceClass, port=_port, availabilityZone=_availabilityZone, dBSubnetGroupName=_dBSubnetGroupName, multiAZ=_multiAZ, publiclyAccessible=_publiclyAccessible, autoMinorVersionUpgrade=_autoMinorVersionUpgrade, licenseModel=_licenseModel, dBName=_dBName, engine=_engine, iops=_iops, optionGroupName=_optionGroupName, tags=_tags, storageType=_storageType, tdeCredentialARN=_tdeCredentialARN, tdeCredentialPassword=_tdeCredentialPassword;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"RestoreDBInstanceFromDBSnapshot"];
		[self setVersion:@"2014-10-31"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
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
        @"dBInstanceIdentifier": @"DBInstanceIdentifier",
        @"dBSnapshotIdentifier": @"DBSnapshotIdentifier",
        @"dBInstanceClass": @"DBInstanceClass",
        @"port": @"Port",
        @"availabilityZone": @"AvailabilityZone",
        @"dBSubnetGroupName": @"DBSubnetGroupName",
        @"multiAZ": @"MultiAZ",
        @"publiclyAccessible": @"PubliclyAccessible",
        @"autoMinorVersionUpgrade": @"AutoMinorVersionUpgrade",
        @"licenseModel": @"LicenseModel",
        @"dBName": @"DBName",
        @"engine": @"Engine",
        @"iops": @"Iops",
        @"optionGroupName": @"OptionGroupName",
        @"tags": @"Tags.member",
        @"storageType": @"StorageType",
        @"tdeCredentialARN": @"TdeCredentialArn",
        @"tdeCredentialPassword": @"TdeCredentialPassword"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)licenseModelJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSLicenseModelLicenseIncluded), @(UARDSLicenseModelBringYourOwnLicense), @(UARDSLicenseModelGeneralPublicLicense) ]
                                               stringValues:@[ @"license-included", @"bring-your-own-license", @"general-public-license" ]
                                               unknownValue:@(UARDSLicenseModelUnknown)];
}

+ (NSValueTransformer *)engineJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSEngineMySQL), @(UARDSEngineOrACLeSe1), @(UARDSEngineOrACLeSe), @(UARDSEngineOrACLeEe), @(UARDSEngineSqlserverEe), @(UARDSEngineSqlserverSe), @(UARDSEngineSqlserverEx), @(UARDSEngineSqlserverWeb), @(UARDSEnginePostgres) ]
                                               stringValues:@[ @"MySQL", @"oracle-se1", @"oracle-se", @"oracle-ee", @"sqlserver-ee", @"sqlserver-se", @"sqlserver-ex", @"sqlserver-web", @"postgres" ]
                                               unknownValue:@(UARDSEngineUnknown)];
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

+ (NSValueTransformer *)licenseModelQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSLicenseModelLicenseIncluded), @(UARDSLicenseModelBringYourOwnLicense), @(UARDSLicenseModelGeneralPublicLicense) ]
                                               stringValues:@[ @"license-included", @"bring-your-own-license", @"general-public-license" ]
                                               unknownValue:@(UARDSLicenseModelUnknown)];
}

+ (NSValueTransformer *)engineQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSEngineMySQL), @(UARDSEngineOrACLeSe1), @(UARDSEngineOrACLeSe), @(UARDSEngineOrACLeEe), @(UARDSEngineSqlserverEe), @(UARDSEngineSqlserverSe), @(UARDSEngineSqlserverEx), @(UARDSEngineSqlserverWeb), @(UARDSEnginePostgres) ]
                                               stringValues:@[ @"MySQL", @"oracle-se1", @"oracle-se", @"oracle-ee", @"sqlserver-ee", @"sqlserver-se", @"sqlserver-ex", @"sqlserver-web", @"postgres" ]
                                               unknownValue:@(UARDSEngineUnknown)];
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

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSRestoreDBInstanceFromDBSnapshotRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSRestoreDBInstanceFromDBSnapshotRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSRestoreDBInstanceFromDBSnapshotRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSRestoreDBInstanceFromDBSnapshotRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop