//
//  UARDSDBSubnetGroupResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSResponse.h"

@class UARDSDBSubnetGroup;

@interface UARDSDBSubnetGroupResponse : UARDSResponse

@property (nonatomic, copy) UARDSDBSubnetGroup *dBSubnetGroup;

@end
