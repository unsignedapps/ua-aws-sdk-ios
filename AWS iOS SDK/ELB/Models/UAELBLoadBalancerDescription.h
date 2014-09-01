//
//  UAELBLoadBalancerDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@class UAELBListenerDescription, UAELBPolicies, UAELBBackendServerDescription, UAELBInstance, UAELBHealthCheck, UAELBSourceSecurityGroup;

@interface UAELBLoadBalancerDescription : UAELBModel

@property (nonatomic, copy) NSString *loadBalancerName;
@property (nonatomic, copy) NSString *dNSName;
@property (nonatomic, copy) NSString *canonicalHostedZoneName;
@property (nonatomic, copy) NSString *canonicalHostedZoneNameID;
@property (nonatomic, copy) NSArray *listenerDescriptions;
@property (nonatomic, copy) UAELBPolicies *policies;
@property (nonatomic, copy) NSArray *backendServerDescriptions;
@property (nonatomic, copy) NSArray *availabilityZones;
@property (nonatomic, copy) NSArray *subnets;
@property (nonatomic, copy) NSString *vPCID;
@property (nonatomic, copy) NSArray *instances;
@property (nonatomic, copy) UAELBHealthCheck *healthCheck;
@property (nonatomic, copy) UAELBSourceSecurityGroup *sourceSecurityGroup;
@property (nonatomic, copy) NSArray *securityGroups;
@property (nonatomic, copy) NSDate *createdTime;
@property (nonatomic) UAELBScheme scheme;

/**
 * Retrieves the UAELBListenerDescription at the specified index.
**/
- (UAELBListenerDescription *)listenerDescriptionAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAELBBackendServerDescription at the specified index.
**/
- (UAELBBackendServerDescription *)backendServerDescriptionAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)availabilityZoneAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)subnetAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAELBInstance at the specified index.
**/
- (UAELBInstance *)instanceAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)securityGroupAtIndex:(NSUInteger)index;

/**
 * Adds a ListenerDescription to the listenerDescriptions property.
 *
 * This will initialise listenerDescriptions with an empty mutable array if necessary.
**/
- (void)addListenerDescription:(UAELBListenerDescription *)listenerDescription;
/**
 * Adds a BackendServerDescription to the backendServerDescriptions property.
 *
 * This will initialise backendServerDescriptions with an empty mutable array if necessary.
**/
- (void)addBackendServerDescription:(UAELBBackendServerDescription *)backendServerDescription;
/**
 * Adds a AvailabilityZone to the availabilityZones property.
 *
 * This will initialise availabilityZones with an empty mutable array if necessary.
**/
- (void)addAvailabilityZone:(NSString *)availabilityZone;
/**
 * Adds a Subnet to the subnets property.
 *
 * This will initialise subnets with an empty mutable array if necessary.
**/
- (void)addSubnet:(NSString *)subnet;
/**
 * Adds a Instance to the instances property.
 *
 * This will initialise instances with an empty mutable array if necessary.
**/
- (void)addInstance:(UAELBInstance *)instance;
/**
 * Adds a SecurityGroup to the securityGroups property.
 *
 * This will initialise securityGroups with an empty mutable array if necessary.
**/
- (void)addSecurityGroup:(NSString *)securityGroup;

@end
