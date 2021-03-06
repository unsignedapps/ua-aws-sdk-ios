//
//  UAEC2AccepterVPCInfo.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2AccepterVPCInfo : UAEC2Model

@property (nonatomic, copy) NSString *cidrBlock;
@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *vpcID;

@end
