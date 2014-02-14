//
//  UAASDescribeLaunchConfigurationsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeLaunchConfigurationsResponse.h"
#import "UAASLaunchConfiguration.h"

@implementation UAASDescribeLaunchConfigurationsResponse

@synthesize launchConfigurations=_launchConfigurations, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeLaunchConfigurationsResponse/AutoScaling:DescribeLaunchConfigurationsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"launchConfigurations": @"AutoScaling:LaunchConfigurations/AutoScaling:member",
        @"nextToken": @"AutoScaling:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)launchConfigurationsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASLaunchConfiguration class]];
}

@end
