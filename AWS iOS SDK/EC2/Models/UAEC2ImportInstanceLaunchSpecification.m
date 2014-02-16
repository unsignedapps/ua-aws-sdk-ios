//
//  UAEC2ImportInstanceLaunchSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportInstanceLaunchSpecification.h"
#import "UAEC2Placement.h"

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

- (NSString *)decodedUserData
{
    if (self.userData == nil)
        return nil;
    
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self.userData options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (void)setDecodedUserData:(NSString *)decodedUserData
{
    if (decodedUserData == nil)
        [self setUserData:nil];
    else
		[self setUserData:[[decodedUserData dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:kNilOptions]];
}

+ (NSValueTransformer *)placementQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)monitoringQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)groupNamesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)placementXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2Placement class]];
}

+ (NSValueTransformer *)monitoringXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
