//
//  UAEC2NetworkInterfaceAssociation.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2NetworkInterfaceAssociation : UAEC2Model

@property (nonatomic, copy) NSString *publicIP;
@property (nonatomic, copy) NSString *ipOwnerID;
@property (nonatomic, copy) NSString *allocationID;
@property (nonatomic, copy) NSString *associationID;

@end
