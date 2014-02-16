//
//  UAEC2CreateSubnetResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2Subnet;

@interface UAEC2CreateSubnetResponse : UAEC2Response

@property (nonatomic, copy) UAEC2Subnet *subnet;

@end
