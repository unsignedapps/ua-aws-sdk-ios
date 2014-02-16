//
//  UAEC2DescribeNetworkInterfacesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2NetworkInterface;

@interface UAEC2DescribeNetworkInterfacesResponse : UAEC2Response

@property (nonatomic, copy) NSArray *networkInterfaces;

@end
