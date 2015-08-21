//
//  UARDSModifyDBInstanceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModifyDBInstanceRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBInstanceResponse.h"

@interface UARDSModifyDBInstanceRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSModifyDBInstanceRequest

@synthesize action=_action, version=_version, dBInstanceIdentifier=_dBInstanceIdentifier, allocatedStorage=_allocatedStorage, dBInstanceClass=_dBInstanceClass, dBSecurityGroups=_dBSecurityGroups, vpcSecurityGroupIDs=_vpcSecurityGroupIDs, applyImmediately=_applyImmediately, masterUserPassword=_masterUserPassword, dBParameterGroupName=_dBParameterGroupName, backupRetentionPeriod=_backupRetentionPeriod, preferredBackupWindow=_preferredBackupWindow, preferredMaintenanceWindow=_preferredMaintenanceWindow, multiAZ=_multiAZ, engineVersion=_engineVersion, allowMajorVersionUpgrade=_allowMajorVersionUpgrade, autoMinorVersionUpgrade=_autoMinorVersionUpgrade, iops=_iops, optionGroupName=_optionGroupName, modifiedDBInstanceIdentifier=_modifiedDBInstanceIdentifier, storageType=_storageType, tdeCredentialARN=_tdeCredentialARN, tdeCredentialPassword=_tdeCredentialPassword, cACertificateIdentifier=_cACertificateIdentifier;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ModifyDBInstance"];
		[self setVersion:@"2014-10-31"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBSecurityGroupAtIndex:) propertyName:@"dBSecurityGroups"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(vpcSecurityGroupIDAtIndex:) propertyName:@"vpcSecurityGroupIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBSecurityGroup:) propertyName:@"dBSecurityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addVPCSecurityGroupID:) propertyName:@"vpcSecurityGroupIDs"];
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
        @"allocatedStorage": @"AllocatedStorage",
        @"dBInstanceClass": @"DBInstanceClass",
        @"dBSecurityGroups": @"DBSecurityGroups.member",
        @"vpcSecurityGroupIDs": @"VpcSecurityGroupIds.member",
        @"applyImmediately": @"ApplyImmediately",
        @"masterUserPassword": @"MasterUserPassword",
        @"dBParameterGroupName": @"DBParameterGroupName",
        @"backupRetentionPeriod": @"BackupRetentionPeriod",
        @"preferredBackupWindow": @"PreferredBackupWindow",
        @"preferredMaintenanceWindow": @"PreferredMaintenanceWindow",
        @"multiAZ": @"MultiAZ",
        @"engineVersion": @"EngineVersion",
        @"allowMajorVersionUpgrade": @"AllowMajorVersionUpgrade",
        @"autoMinorVersionUpgrade": @"AutoMinorVersionUpgrade",
        @"iops": @"Iops",
        @"optionGroupName": @"OptionGroupName",
        @"modifiedDBInstanceIdentifier": @"ModifiedDBInstanceIdentifier",
        @"storageType": @"StorageType",
        @"tdeCredentialARN": @"TdeCredentialArn",
        @"tdeCredentialPassword": @"TdeCredentialPassword",
        @"cACertificateIdentifier": @"CACertificateIdentifier"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)storageTypeJSONTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSStorageTypeStandard), @(UARDSStorageTypeGP2), @(UARDSStorageTypeIO1) ]
                                               stringValues:@[ @"standard", @"gp2", @"io1" ]
                                               unknownValue:@(UARDSStorageTypeUnknown)];
}

+ (NSValueTransformer *)storageTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSStorageTypeStandard), @(UARDSStorageTypeGP2), @(UARDSStorageTypeIO1) ]
                                               stringValues:@[ @"standard", @"gp2", @"io1" ]
                                               unknownValue:@(UARDSStorageTypeUnknown)];
}

/*#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSModifyDBInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSModifyDBInstanceRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSModifyDBInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSModifyDBInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop