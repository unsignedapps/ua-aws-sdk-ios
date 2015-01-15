//
//  UAASDescribeLifecycleHooksResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeLifecycleHooksResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASLifecycleHook.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeLifecycleHooksResponse

@synthesize lifecycleHooks=_lifecycleHooks;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(lifecycleHookAtIndex:) propertyName:@"lifecycleHooks"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addLifecycleHook:) propertyName:@"lifecycleHooks"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeLifecycleHooksResponse/AutoScaling:DescribeLifecycleHooksResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"lifecycleHooks": @"AutoScaling:LifecycleHooks/AutoScaling:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)lifecycleHooksXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASLifecycleHook class]];
}

@end

#pragma clang diagnostic pop