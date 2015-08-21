//
//  UARDSDBSecurityGroupMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSDBSecurityGroup;

@interface UARDSDBSecurityGroupMessage : UARDSModel

@property (nonatomic, copy) NSString *marker;
@property (nonatomic, copy) NSArray *dBSecurityGroups;

/**
 * Retrieves the UARDSDBSecurityGroup at the specified index.
**/
- (UARDSDBSecurityGroup *)dBSecurityGroupAtIndex:(NSUInteger)index;

/**
 * Adds a DBSecurityGroup to the dBSecurityGroups property.
 *
 * This will initialise dBSecurityGroups with an empty mutable array if necessary.
**/
- (void)addDBSecurityGroup:(UARDSDBSecurityGroup *)dBSecurityGroup;

@end
