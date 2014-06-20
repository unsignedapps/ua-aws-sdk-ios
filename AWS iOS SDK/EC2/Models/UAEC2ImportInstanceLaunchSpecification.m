//
//  UAEC2ImportInstanceLaunchSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportInstanceLaunchSpecification.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Placement.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ImportInstanceLaunchSpecification

@synthesize architecture=_architecture, groupNames=_groupNames, additionalInfo=_additionalInfo, userData=_userData, instanceType=_instanceType, placement=_placement, monitoring=_monitoring, subnetID=_subnetID, instanceInitiatedShutdownBehavior=_instanceInitiatedShutdownBehavior, privateIPAddress=_privateIPAddress;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"architecture": @"Architecture",
        @"groupNames": @"GroupName",
        @"additionalInfo": @"AdditionalInfo",
        @"userData": @"UserData",
        @"decodedUserData": [NSNull null],
        @"instanceType": @"InstanceType",
        @"placement": @"Placement",
        @"monitoring": @"Monitoring",
        @"subnetID": @"SubnetId",
        @"instanceInitiatedShutdownBehavior": @"InstanceInitiatedShutdownBehavior",
        @"privateIPAddress": @"PrivateIpAddress"
    }];
    return [keyPaths copy];
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"architecture": @"ec2:Architecture",
        @"groupNames": @"ec2:GroupName/ec2:GroupNames",
        @"additionalInfo": @"ec2:AdditionalInfo",
        @"userData": @"ec2:UserData",
        @"decodedUserData": [NSNull null],
        @"instanceType": @"ec2:InstanceType",
        @"placement": @"ec2:Placement",
        @"monitoring": @"ec2:Monitoring",
        @"subnetID": @"ec2:SubnetId",
        @"instanceInitiatedShutdownBehavior": @"ec2:InstanceInitiatedShutdownBehavior",
        @"privateIPAddress": @"ec2:PrivateIpAddress"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)placementQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)monitoringQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)instanceInitiatedShutdownBehaviorQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceInitiatedShutdownBehaviorStop), @(UAEC2InstanceInitiatedShutdownBehaviorTerminate) ]
                                               stringValues:@[ @"stop", @"terminate" ]
                                               unknownValue:@(UAEC2InstanceInitiatedShutdownBehaviorUnknown)];
}

+ (NSValueTransformer *)groupNamesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)placementXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)monitoringXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)instanceInitiatedShutdownBehaviorXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceInitiatedShutdownBehaviorStop), @(UAEC2InstanceInitiatedShutdownBehaviorTerminate) ]
                                               stringValues:@[ @"stop", @"terminate" ]
                                               unknownValue:@(UAEC2InstanceInitiatedShutdownBehaviorUnknown)];
}

@end

#pragma clang diagnostic pop