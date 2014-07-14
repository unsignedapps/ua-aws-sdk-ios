//
//  UAEC2DescribeExportTasksResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeExportTasksResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ExportTask.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeExportTasksResponse

@synthesize exportTasks=_exportTasks;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(exportTaskAtIndex:) propertyName:@"exportTasks"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeExportTasksResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"exportTasks": @"ec2:exportTaskSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)exportTasksXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ExportTask class]];
}

@end

#pragma clang diagnostic pop