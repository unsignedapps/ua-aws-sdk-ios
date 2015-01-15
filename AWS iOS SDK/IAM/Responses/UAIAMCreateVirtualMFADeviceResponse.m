//
//  UAIAMCreateVirtualMFADeviceResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateVirtualMFADeviceResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMVirtualMFADevice.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMCreateVirtualMFADeviceResponse

@synthesize virtualMFADevice=_virtualMFADevice;

+ (NSString *)XPathPrefix
{
    return @"./iam:CreateVirtualMFADeviceResponse/iam:CreateVirtualMFADeviceResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"virtualMFADevice": @"iam:VirtualMFADevice"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)virtualMFADeviceXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMVirtualMFADevice class]];
}

@end

#pragma clang diagnostic pop