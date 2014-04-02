//
//  UAEC2DescribeExportTasksResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeExportTasksResponse.h"
#import "UAEC2ExportTask.h"

@implementation UAEC2DescribeExportTasksResponse

@synthesize exportTasks=_exportTasks;

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

- (UAEC2ExportTask *)exportTaskAtIndex:(NSUInteger)index
{
    if (self.exportTasks == nil || index >= ([self.exportTasks count]-1))
        return nil;

    return [self.exportTasks objectAtIndex:index];
}

+ (NSValueTransformer *)exportTasksXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ExportTask class]];
}

@end
