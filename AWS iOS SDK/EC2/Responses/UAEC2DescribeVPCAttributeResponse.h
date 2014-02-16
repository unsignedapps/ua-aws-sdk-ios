//
//  UAEC2DescribeVPCAttributeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2EnableDNSSupport, UAEC2EnableDNSHostnames;

@interface UAEC2DescribeVPCAttributeResponse : UAEC2Response

@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) UAEC2EnableDNSSupport *enableDNSSupport;
@property (nonatomic, copy) UAEC2EnableDNSHostnames *enableDNSHostnames;

@end
