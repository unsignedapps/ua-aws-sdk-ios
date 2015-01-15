//
//  UAASDescribeLifecycleHookTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeLifecycleHookTypesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeLifecycleHookTypesResponse

@synthesize lifecycleHookTypes=_lifecycleHookTypes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(lifecycleHookTypeAtIndex:) propertyName:@"lifecycleHookTypes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addLifecycleHookType:) propertyName:@"lifecycleHookTypes"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeLifecycleHookTypesResponse/AutoScaling:DescribeLifecycleHookTypesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"lifecycleHookTypes": @"AutoScaling:LifecycleHookTypes/AutoScaling:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)lifecycleHookTypesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop