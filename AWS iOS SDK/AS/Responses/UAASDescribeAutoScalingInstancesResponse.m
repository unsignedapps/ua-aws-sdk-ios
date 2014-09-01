//
//  UAASDescribeAutoScalingInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeAutoScalingInstancesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASAutoScalingInstanceDetails.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeAutoScalingInstancesResponse

@synthesize autoScalingInstances=_autoScalingInstances, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(autoScalingInstancesAtIndex:) propertyName:@"autoScalingInstances"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAutoScalingInstances:) propertyName:@"autoScalingInstances"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeAutoScalingInstancesResponse/AutoScaling:DescribeAutoScalingInstancesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"autoScalingInstances": @"AutoScaling:AutoScalingInstances/AutoScaling:member",
        @"nextToken": @"AutoScaling:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)autoScalingInstancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASAutoScalingInstanceDetails class]];
}

@end

#pragma clang diagnostic pop