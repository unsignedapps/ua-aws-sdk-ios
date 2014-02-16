//
//  UAEC2ExportTask.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ExportTask.h"
#import "UAEC2InstanceExportDetails.h"
#import "UAEC2ExportToS3Task.h"

@implementation UAEC2ExportTask

@synthesize exportTaskID=_exportTaskID, descriptionValue=_descriptionValue, state=_state, statusMessage=_statusMessage, instanceExportDetails=_instanceExportDetails, exportToS3Task=_exportToS3Task;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"exportTaskID": @"ec2:exportTaskId",
        @"descriptionValue": @"ec2:description",
        @"state": @"ec2:state",
        @"statusMessage": @"ec2:statusMessage",
        @"instanceExportDetails": @"ec2:instanceExport",
        @"exportToS3Task": @"ec2:exportToS3"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)instanceExportDetailsQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2InstanceExportDetails class]];
}

+ (NSValueTransformer *)exportToS3TaskQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2ExportToS3Task class]];
}

+ (NSValueTransformer *)instanceExportDetailsXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2InstanceExportDetails class]];
}

+ (NSValueTransformer *)exportToS3TaskXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2ExportToS3Task class]];
}

@end
