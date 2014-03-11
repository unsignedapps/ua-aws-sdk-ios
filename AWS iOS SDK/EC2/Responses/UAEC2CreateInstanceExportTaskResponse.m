//
//  UAEC2CreateInstanceExportTaskResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateInstanceExportTaskResponse.h"
#import "UAEC2ExportTask.h"

@implementation UAEC2CreateInstanceExportTaskResponse

@synthesize exportTask=_exportTask;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateInstanceExportTaskResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"exportTask": @"ec2:exportTask"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)exportTaskXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2ExportTask class]];
}

@end
