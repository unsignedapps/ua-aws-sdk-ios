//
//  UAEC2DescribeConversionTasksResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeConversionTasksResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ConversionTask.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeConversionTasksResponse

@synthesize conversionTasks=_conversionTasks;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(conversionTaskAtIndex:) propertyName:@"conversionTasks"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addConversionTask:) propertyName:@"conversionTasks"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeConversionTasksResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"conversionTasks": @"ec2:conversionTasks/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)conversionTasksXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ConversionTask class]];
}

@end

#pragma clang diagnostic pop