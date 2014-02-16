//
//  UAEC2DescribeConversionTasksResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeConversionTasksResponse.h"
#import "UAEC2ConversionTask.h"

@implementation UAEC2DescribeConversionTasksResponse

@synthesize conversionTasks=_conversionTasks;

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
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2ConversionTask class]];
}

@end
