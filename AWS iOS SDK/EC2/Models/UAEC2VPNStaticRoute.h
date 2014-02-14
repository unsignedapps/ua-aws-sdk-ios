//
//  UAEC2VPNStaticRoute.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2VPNStaticRoute : UAEC2Model

@property (nonatomic, copy) NSString *destinationCidrBlock;
@property (nonatomic, copy) NSString *source;
@property (nonatomic, copy) NSString *state;

@end
