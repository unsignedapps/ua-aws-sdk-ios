//
//  UAEC2NetworkACLAssociation.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2NetworkACLAssociation : UAEC2Model

@property (nonatomic, copy) NSString *networkACLAssociationID;
@property (nonatomic, copy) NSString *networkACLID;
@property (nonatomic, copy) NSString *subnetID;

@end
