//
//  UAEC2CreateInstanceExportTaskResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ExportTask;

@interface UAEC2CreateInstanceExportTaskResponse : UAEC2Response

@property (nonatomic, copy) UAEC2ExportTask *exportTask;

@end
