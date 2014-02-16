//
//  UAEC2Entry.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2IcmpTypeCode, UAEC2PortRange;

@interface UAEC2Entry : UAEC2Model

@property (nonatomic, strong) NSNumber *ruleNumber;
@property (nonatomic, copy) NSString *protocol;
@property (nonatomic, copy) NSString *ruleAction;
@property (nonatomic) BOOL egress;
@property (nonatomic, copy) NSString *cidrBlock;
@property (nonatomic, copy) UAEC2IcmpTypeCode *icmpTypeCode;
@property (nonatomic, copy) UAEC2PortRange *portRange;

@end
