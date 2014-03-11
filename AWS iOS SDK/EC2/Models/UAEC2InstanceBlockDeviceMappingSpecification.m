//
//  UAEC2InstanceBlockDeviceMappingSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceBlockDeviceMappingSpecification.h"
#import "UAEC2EBSInstanceBlockDeviceSpecification.h"

@implementation UAEC2InstanceBlockDeviceMappingSpecification

@synthesize deviceName=_deviceName, ebs=_ebs, virtualName=_virtualName, noDevice=_noDevice;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"deviceName": @"DeviceName",
        @"ebs": @"Ebs",
        @"virtualName": @"VirtualName",
        @"noDevice": @"NoDevice"
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
        @"deviceName": @"ec2:DeviceName",
        @"ebs": @"ec2:Ebs",
        @"virtualName": @"ec2:VirtualName",
        @"noDevice": @"ec2:NoDevice"
    }];
    return [keyPaths copy];
}

- (void)setDeviceName:(NSString *)deviceName
{
	_deviceName = deviceName;
	
	if (![self.UA_dirtyProperties containsObject:@"deviceName"])
		[self.UA_dirtyProperties addObject:@"deviceName"];
}

- (void)setEbs:(UAEC2EBSInstanceBlockDeviceSpecification *)ebs
{
	_ebs = ebs;
	
	if (![self.UA_dirtyProperties containsObject:@"ebs"])
		[self.UA_dirtyProperties addObject:@"ebs"];
}

- (void)setVirtualName:(NSString *)virtualName
{
	_virtualName = virtualName;
	
	if (![self.UA_dirtyProperties containsObject:@"virtualName"])
		[self.UA_dirtyProperties addObject:@"virtualName"];
}

- (void)setNoDevice:(NSString *)noDevice
{
	_noDevice = noDevice;
	
	if (![self.UA_dirtyProperties containsObject:@"noDevice"])
		[self.UA_dirtyProperties addObject:@"noDevice"];
}

+ (NSValueTransformer *)ebsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2EBSInstanceBlockDeviceSpecification class]];
}

+ (NSValueTransformer *)ebsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2EBSInstanceBlockDeviceSpecification class]];
}

@end
