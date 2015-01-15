//
//  UAASDescribeAutoScalingNotificationTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeAutoScalingNotificationTypesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeAutoScalingNotificationTypesResponse

@synthesize autoScalingNotificationTypes=_autoScalingNotificationTypes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(autoScalingNotificationTypeAtIndex:) propertyName:@"autoScalingNotificationTypes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAutoScalingNotificationType:) propertyName:@"autoScalingNotificationTypes"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeAutoScalingNotificationTypesResponse/AutoScaling:DescribeAutoScalingNotificationTypesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"autoScalingNotificationTypes": @"AutoScaling:AutoScalingNotificationTypes/AutoScaling:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)autoScalingNotificationTypesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop