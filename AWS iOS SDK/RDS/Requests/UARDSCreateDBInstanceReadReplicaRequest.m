//
//  UARDSCreateDBInstanceReadReplicaRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSCreateDBInstanceReadReplicaRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBInstanceResponse.h"
#import "UARDSTag.h"

@interface UARDSCreateDBInstanceReadReplicaRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSCreateDBInstanceReadReplicaRequest

@synthesize action=_action, version=_version, dBInstanceIdentifier=_dBInstanceIdentifier, sourceDBInstanceIdentifier=_sourceDBInstanceIdentifier, dBInstanceClass=_dBInstanceClass, availabilityZone=_availabilityZone, port=_port, autoMinorVersionUpgrade=_autoMinorVersionUpgrade, iops=_iops, optionGroupName=_optionGroupName, publiclyAccessible=_publiclyAccessible, tags=_tags, dBSubnetGroupName=_dBSubnetGroupName, storageType=_storageType;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateDBInstanceReadReplica"];
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
        @"sourceDBInstanceIdentifier": @"SourceDBInstanceIdentifier",
        @"dBInstanceClass": @"DBInstanceClass",
        @"availabilityZone": @"AvailabilityZone",
        @"port": @"Port",
        @"autoMinorVersionUpgrade": @"AutoMinorVersionUpgrade",
        @"iops": @"Iops",
        @"optionGroupName": @"OptionGroupName",
        @"publiclyAccessible": @"PubliclyAccessible",
        @"tags": @"Tags.member",
        @"dBSubnetGroupName": @"DBSubnetGroupName",
        @"storageType": @"StorageType"
    }];
    return [keyPaths copy];
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

- (void)invokeWithOwner:(id)owner completionBlock:(UARDSCreateDBInstanceReadReplicaRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UARDSCreateDBInstanceReadReplicaRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UARDSCreateDBInstanceReadReplicaRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UARDSCreateDBInstanceReadReplicaRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}
*/
@end

#pragma clang diagnostic pop