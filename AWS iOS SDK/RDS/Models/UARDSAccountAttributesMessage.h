//
//  UARDSAccountAttributesMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSAccountQuota;

@interface UARDSAccountAttributesMessage : UARDSModel

@property (nonatomic, copy) NSArray *accountQuotas;

/**
 * Retrieves the UARDSAccountQuota at the specified index.
**/
- (UARDSAccountQuota *)accountQuotaAtIndex:(NSUInteger)index;

/**
 * Adds a AccountQuota to the accountQuotas property.
 *
 * This will initialise accountQuotas with an empty mutable array if necessary.
**/
- (void)addAccountQuota:(UARDSAccountQuota *)accountQuota;

@end
