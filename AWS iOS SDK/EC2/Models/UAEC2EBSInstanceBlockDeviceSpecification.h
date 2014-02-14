//
//  UAEC2EBSInstanceBlockDeviceSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2EBSInstanceBlockDeviceSpecification : UAEC2Model

@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic) BOOL deleteOnTermination;

@end
