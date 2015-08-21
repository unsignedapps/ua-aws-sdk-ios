//
//  UARDSEndpoint.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSEndpoint : UARDSModel

@property (nonatomic, copy) NSString *address;
@property (nonatomic, strong) NSNumber *port;

@end
