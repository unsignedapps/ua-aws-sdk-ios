//
//  UAASBlockDeviceMapping.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASBlockDeviceMapping.h"
#import "UAASEBSBlockDevice.h"

@implementation UAASBlockDeviceMapping

@synthesize virtualName=_virtualName, deviceName=_deviceName, ebs=_ebs, noDevice=_noDevice;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"virtualName": @"VirtualName",
        @"deviceName": @"DeviceName",
        @"ebs": @"Ebs",
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
    NSMutableDictionary *keyPaths = [[UAASModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"virtualName": @"AutoScaling:VirtualName",
        @"deviceName": @"AutoScaling:DeviceName",
        @"ebs": @"AutoScaling:Ebs",
        @"noDevice": @"AutoScaling:NoDevice"
    }];
    return [keyPaths copy];
}

- (void)setVirtualName:(NSString *)virtualName
{
	_virtualName = virtualName;
	
	if (![self.UA_dirtyProperties containsObject:@"virtualName"])
		[self.UA_dirtyProperties addObject:@"virtualName"];
}

- (void)setDeviceName:(NSString *)deviceName
{
	_deviceName = deviceName;
	
	if (![self.UA_dirtyProperties containsObject:@"deviceName"])
		[self.UA_dirtyProperties addObject:@"deviceName"];
}

- (void)setEbs:(UAASEBSBlockDevice *)ebs
{
	_ebs = ebs;
	
	if (![self.UA_dirtyProperties containsObject:@"ebs"])
		[self.UA_dirtyProperties addObject:@"ebs"];
}

- (void)setNoDevice:(BOOL)noDevice
{
	_noDevice = noDevice;
	
	if (![self.UA_dirtyProperties containsObject:@"noDevice"])
		[self.UA_dirtyProperties addObject:@"noDevice"];
}

+ (NSValueTransformer *)ebsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAASEBSBlockDevice class]];
}

+ (NSValueTransformer *)ebsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAASEBSBlockDevice class]];
}

+ (NSValueTransformer *)noDeviceXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
