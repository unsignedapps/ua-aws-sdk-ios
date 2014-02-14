//
//  UAELBLoadBalancerDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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

@end
