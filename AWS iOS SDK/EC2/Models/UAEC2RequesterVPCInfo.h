//
//  UAEC2RequesterVPCInfo.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2RequesterVPCInfo : UAEC2Model

@property (nonatomic, copy) NSString *cidrBlock;
@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *vpcID;

@end
