//
//  UAIAMListVirtualMFADevicesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListVirtualMFADevicesResponse.h"
#import "UAIAMVirtualMFADevice.h"

@implementation UAIAMListVirtualMFADevicesResponse

@synthesize virtualMFADevices=_virtualMFADevices, isTruncated=_isTruncated, marker=_marker;

+ (NSString *)XPathPrefix
{
    return @"./ListVirtualMFADevicesResponse/ListVirtualMFADevicesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"virtualMFADevices": @"VirtualMFADevices/member",
        @"isTruncated": @"IsTruncated",
        @"marker": @"Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)virtualMFADevicesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAIAMVirtualMFADevice class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end