//
//  UARDSOptionToInclude.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSOptionSetting;

@interface UARDSOptionToInclude : UARDSModel

@property (nonatomic, copy) NSString *optionName;
@property (nonatomic, strong) NSNumber *port;
@property (nonatomic, strong) NSMutableArray *dBSecurityGroupMemberships;
@property (nonatomic, strong) NSMutableArray *vpcSecurityGroupMemberships;
@property (nonatomic, strong) NSMutableArray *optionSettings;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)dBSecurityGroupMembershipAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)vpcSecurityGroupMembershipAtIndex:(NSUInteger)index;

/**
 * Retrieves the UARDSOptionSetting at the specified index.
**/
- (UARDSOptionSetting *)optionSettingAtIndex:(NSUInteger)index;

/**
 * Adds a DBSecurityGroupMembership to the dBSecurityGroupMemberships property.
 *
 * This will initialise dBSecurityGroupMemberships with an empty mutable array if necessary.
**/
- (void)addDBSecurityGroupMembership:(NSString *)dBSecurityGroupMembership;
/**
 * Adds a VPCSecurityGroupMembership to the vpcSecurityGroupMemberships property.
 *
 * This will initialise vpcSecurityGroupMemberships with an empty mutable array if necessary.
**/
- (void)addVPCSecurityGroupMembership:(NSString *)vPCSecurityGroupMembership;
/**
 * Adds a OptionSetting to the optionSettings property.
 *
 * This will initialise optionSettings with an empty mutable array if necessary.
**/
- (void)addOptionSetting:(UARDSOptionSetting *)optionSetting;

@end
