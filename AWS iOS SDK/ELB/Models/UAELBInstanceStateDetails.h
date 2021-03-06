//
//  UAELBInstanceStateDetails.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBInstanceStateDetails : UAELBModel

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic) UAELBInstanceState state;
@property (nonatomic) UAELBInstanceStateReasonCode reasonCode;
@property (nonatomic, copy) NSString *descriptionValue;

@end
