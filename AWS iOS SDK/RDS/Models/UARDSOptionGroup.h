//
//  UARDSOptionGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSOption;

@interface UARDSOptionGroup : UARDSModel

@property (nonatomic, copy) NSString *optionGroupName;
@property (nonatomic, copy) NSString *optionGroupDescription;
@property (nonatomic, copy) NSString *engineName;
@property (nonatomic, copy) NSString *majorEngineVersion;
@property (nonatomic, copy) NSArray *options;
@property (nonatomic) BOOL allowsVPCAndNonVPCInstanceMemberships;
@property (nonatomic, copy) NSString *vpcID;

/**
 * Retrieves the UARDSOption at the specified index.
**/
- (UARDSOption *)optionAtIndex:(NSUInteger)index;

/**
 * Adds a Option to the options property.
 *
 * This will initialise options with an empty mutable array if necessary.
**/
- (void)addOption:(UARDSOption *)option;

@end
