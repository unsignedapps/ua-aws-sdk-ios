//
//  UAEC2DescribeBundleTasksResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeBundleTasksResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2BundleTask.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeBundleTasksResponse

@synthesize bundleTasks=_bundleTasks;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(bundleTaskAtIndex:) propertyName:@"bundleTasks"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addBundleTask:) propertyName:@"bundleTasks"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeBundleTasksResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"bundleTasks": @"ec2:bundleInstanceTasksSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)bundleTasksXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2BundleTask class]];
}

@end

#pragma clang diagnostic pop