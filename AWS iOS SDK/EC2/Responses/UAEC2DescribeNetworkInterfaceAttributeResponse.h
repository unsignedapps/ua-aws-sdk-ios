//
//  UAEC2DescribeNetworkInterfaceAttributeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2SourceDestCheck, UAEC2GroupIdentifier, UAEC2NetworkInterfaceAttachment;

@interface UAEC2DescribeNetworkInterfaceAttributeResponse : UAEC2Response

@property (nonatomic, copy) NSString *networkInterfaceID;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) UAEC2SourceDestCheck *sourceDestCheck;
@property (nonatomic, copy) NSArray *groups;
@property (nonatomic, copy) UAEC2NetworkInterfaceAttachment *attachment;

@end
