//
//  UARDSDBSubnetGroupMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSDBSubnetGroup;

@interface UARDSDBSubnetGroupMessage : UARDSModel

@property (nonatomic, copy) NSString *marker;
@property (nonatomic, copy) NSArray *dBSubnetGroups;

/**
 * Retrieves the UARDSDBSubnetGroup at the specified index.
**/
- (UARDSDBSubnetGroup *)dBSubnetGroupAtIndex:(NSUInteger)index;

/**
 * Adds a DBSubnetGroup to the dBSubnetGroups property.
 *
 * This will initialise dBSubnetGroups with an empty mutable array if necessary.
**/
- (void)addDBSubnetGroup:(UARDSDBSubnetGroup *)dBSubnetGroup;

@end
