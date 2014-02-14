//
//  UAEC2DescribeExportTasksResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ExportTask;

@interface UAEC2DescribeExportTasksResponse : UAEC2Response

@property (nonatomic, copy) NSArray *exportTasks;

@end
