//
//  UAEC2ExportTask.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2InstanceExportDetails, UAEC2ExportToS3Task;

@interface UAEC2ExportTask : UAEC2Model

@property (nonatomic, copy) NSString *exportTaskID;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *statusMessage;
@property (nonatomic, copy) UAEC2InstanceExportDetails *instanceExportDetails;
@property (nonatomic, copy) UAEC2ExportToS3Task *exportToS3Task;

@end
