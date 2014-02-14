//
//  UAEC2Route.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2Route : UAEC2Model

@property (nonatomic, copy) NSString *destinationCidrBlock;
@property (nonatomic, copy) NSString *gatewayID;
@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *instanceOwnerID;
@property (nonatomic, copy) NSString *networkInterfaceID;
@property (nonatomic, copy) NSString *state;

@end
