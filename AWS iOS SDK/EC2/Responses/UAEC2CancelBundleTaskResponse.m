//
//  UAEC2CancelBundleTaskResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CancelBundleTaskResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2BundleTask.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2CancelBundleTaskResponse

@synthesize bundleTask=_bundleTask;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CancelBundleTaskResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"bundleTask": @"ec2:bundleInstanceTask"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)bundleTaskXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2BundleTask class]];
}

@end

#pragma clang diagnostic pop