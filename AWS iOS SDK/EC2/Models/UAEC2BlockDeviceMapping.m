//
//  UAEC2BlockDeviceMapping.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2EBSBlockDevice.h"

@implementation UAEC2BlockDeviceMapping

@synthesize virtualName=_virtualName, deviceName=_deviceName, ebs=_ebs, noDevice=_noDevice;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

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
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"virtualName": @"ec2:virtualName",
        @"deviceName": @"ec2:deviceName",
        @"ebs": @"ec2:ebs",
        @"noDevice": @"ec2:noDevice"
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

- (void)setEbs:(UAEC2EBSBlockDevice *)ebs
{
	_ebs = ebs;
	
	if (![self.UA_dirtyProperties containsObject:@"ebs"])
		[self.UA_dirtyProperties addObject:@"ebs"];
}

- (void)setNoDevice:(NSString *)noDevice
{
	_noDevice = noDevice;
	
	if (![self.UA_dirtyProperties containsObject:@"noDevice"])
		[self.UA_dirtyProperties addObject:@"noDevice"];
}

+ (NSValueTransformer *)ebsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2EBSBlockDevice class]];
}

+ (NSValueTransformer *)ebsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2EBSBlockDevice class]];
}

@end
