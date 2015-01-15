//
//  UAASDescribeScalingActivitiesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeScalingActivitiesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASActivity.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeScalingActivitiesResponse

@synthesize activities=_activities, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(activityAtIndex:) propertyName:@"activities"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addActivity:) propertyName:@"activities"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeScalingActivitiesResponse/AutoScaling:DescribeScalingActivitiesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"activities": @"AutoScaling:Activities/AutoScaling:member",
        @"nextToken": @"AutoScaling:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)activitiesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASActivity class]];
}

@end

#pragma clang diagnostic pop