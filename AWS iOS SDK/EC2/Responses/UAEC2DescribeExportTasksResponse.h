//
//  UAEC2DescribeExportTasksResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ExportTask;

@interface UAEC2DescribeExportTasksResponse : UAEC2Response

@property (nonatomic, copy) NSArray *exportTasks;

/**
 * Retrieves the UAEC2ExportTask at the specified index.
**/
- (UAEC2ExportTask *)exportTaskAtIndex:(NSUInteger)index;

@end
