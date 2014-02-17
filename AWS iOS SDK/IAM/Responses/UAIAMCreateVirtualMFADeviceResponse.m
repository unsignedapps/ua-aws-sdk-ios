//
//  UAIAMCreateVirtualMFADeviceResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateVirtualMFADeviceResponse.h"
#import "UAIAMVirtualMFADevice.h"

@implementation UAIAMCreateVirtualMFADeviceResponse

@synthesize virtualMFADevice=_virtualMFADevice;

+ (NSString *)XPathPrefix
{
    return @"./CreateVirtualMFADeviceResponse/CreateVirtualMFADeviceResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"virtualMFADevice": @"VirtualMFADevice"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)virtualMFADeviceXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMVirtualMFADevice class]];
}

@end
