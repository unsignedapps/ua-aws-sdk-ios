//
//  UAEC2CustomerGatewayy.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Tag;

@interface UAEC2CustomerGatewayy : UAEC2Model

@property (nonatomic, copy) NSString *customerGatewayID;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *ipAddress;
@property (nonatomic, copy) NSString *bgpASN;
@property (nonatomic, copy) NSArray *tags;

@end
