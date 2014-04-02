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

- (NSString *)groupNameAtIndex:(NSUInteger)index
{
    if (self.groupNames == nil || index >= ([self.groupNames count]-1))
        return nil;

    return [self.groupNames objectAtIndex:index];
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

- (void)setArchitecture:(NSString *)architecture
{
	_architecture = architecture;
	
	if (![self.UA_dirtyProperties containsObject:@"architecture"])
		[self.UA_dirtyProperties addObject:@"architecture"];
}

- (void)setGroupNames:(NSMutableArray *)groupNames
{
	_groupNames = groupNames;
	
	if (![self.UA_dirtyProperties containsObject:@"groupNames"])
		[self.UA_dirtyProperties addObject:@"groupNames"];
}

- (void)setAdditionalInfo:(NSString *)additionalInfo
{
	_additionalInfo = additionalInfo;
	
	if (![self.UA_dirtyProperties containsObject:@"additionalInfo"])
		[self.UA_dirtyProperties addObject:@"additionalInfo"];
}

- (void)setUserData:(NSString *)userData
{
	_userData = userData;
	
	if (![self.UA_dirtyProperties containsObject:@"userData"])
		[self.UA_dirtyProperties addObject:@"userData"];
}

- (void)setInstanceType:(NSString *)instanceType
{
	_instanceType = instanceType;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceType"])
		[self.UA_dirtyProperties addObject:@"instanceType"];
}

- (void)setPlacement:(UAEC2Placement *)placement
{
	_placement = placement;
	
	if (![self.UA_dirtyProperties containsObject:@"placement"])
		[self.UA_dirtyProperties addObject:@"placement"];
}

- (void)setMonitoring:(BOOL)monitoring
{
	_monitoring = monitoring;
	
	if (![self.UA_dirtyProperties containsObject:@"monitoring"])
		[self.UA_dirtyProperties addObject:@"monitoring"];
}

- (void)setSubnetID:(NSString *)subnetID
{
	_subnetID = subnetID;
	
	if (![self.UA_dirtyProperties containsObject:@"subnetID"])
		[self.UA_dirtyProperties addObject:@"subnetID"];
}

- (void)setInstanceInitiatedShutdownBehavior:(UAEC2InstanceInitiatedShutdownBehavior)instanceInitiatedShutdownBehavior
{
	_instanceInitiatedShutdownBehavior = instanceInitiatedShutdownBehavior;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceInitiatedShutdownBehavior"])
		[self.UA_dirtyProperties addObject:@"instanceInitiatedShutdownBehavior"];
}

- (void)setPrivateIPAddress:(NSString *)privateIPAddress
{
	_privateIPAddress = privateIPAddress;
	
	if (![self.UA_dirtyProperties containsObject:@"privateIPAddress"])
		[self.UA_dirtyProperties addObject:@"privateIPAddress"];
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
