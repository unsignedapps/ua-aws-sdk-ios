//
//  UAASDescribeLaunchConfigurationsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeLaunchConfigurationsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASLaunchConfiguration.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeLaunchConfigurationsResponse

@synthesize launchConfigurations=_launchConfigurations, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(launchConfigurationAtIndex:) propertyName:@"launchConfigurations"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addLaunchConfiguration:) propertyName:@"launchConfigurations"];
	}
	return self;
}

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
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASLaunchConfiguration class]];
}

@end

#pragma clang diagnostic pop