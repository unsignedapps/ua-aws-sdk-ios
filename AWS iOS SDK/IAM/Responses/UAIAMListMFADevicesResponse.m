//
//  UAIAMListMFADevicesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListMFADevicesResponse.h"
#import "UAIAMMFADevice.h"

@implementation UAIAMListMFADevicesResponse

@synthesize mFADevices=_mFADevices, isTruncated=_isTruncated, marker=_marker;

+ (NSString *)XPathPrefix
{
    return @"./iam:ListMFADevicesResponse/iam:ListMFADevicesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"mFADevices": @"iam:MFADevices/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

- (UAIAMMFADevice *)mFADeviceAtIndex:(NSUInteger)index
{
    if (self.mFADevices == nil || index >= ([self.mFADevices count]-1))
        return nil;

    return [self.mFADevices objectAtIndex:index];
}

+ (NSValueTransformer *)mFADevicesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMMFADevice class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
