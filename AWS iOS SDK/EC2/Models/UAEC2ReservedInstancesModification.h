//
//  UAEC2ReservedInstancesModification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2ReservedInstancesID, UAEC2ReservedInstancesModificationResponse;

@interface UAEC2ReservedInstancesModification : UAEC2Model

@property (nonatomic, copy) NSString *reservedInstancesModificationID;
@property (nonatomic, copy) NSArray *reservedInstancesIds;
@property (nonatomic, copy) NSArray *modificationResults;
@property (nonatomic, copy) NSDate *createDate;
@property (nonatomic, copy) NSDate *updateDate;
@property (nonatomic, copy) NSDate *effectiveDate;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *statusMessage;
@property (nonatomic, copy) NSString *clientToken;

@end
