//
//  UAEC2VPC.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Tag;

@interface UAEC2VPC : UAEC2Model

@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *cidrBlock;
@property (nonatomic, copy) NSString *dhcpOptionsID;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSString *instanceTenancy;
@property (nonatomic) BOOL isDefault;

@end
