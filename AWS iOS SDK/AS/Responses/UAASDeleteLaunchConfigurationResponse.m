//
//  UAASDeleteLaunchConfigurationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteLaunchConfigurationResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDeleteLaunchConfigurationResponse

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DeleteLaunchConfigurationResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"requestID": @"AutoScaling:ResponseMetadata/AutoScaling:RequestId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop