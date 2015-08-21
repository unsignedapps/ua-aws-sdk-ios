//
//  UARDSOption.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSOptionSetting, UARDSDBSecurityGroupMembership, UARDSVPCSecurityGroupMembership;

@interface UARDSOption : UARDSModel

@property (nonatomic, copy) NSString *optionName;
@property (nonatomic, copy) NSString *optionDescription;
@property (nonatomic) BOOL persistent;
@property (nonatomic) BOOL permanent;
@property (nonatomic, strong) NSNumber *port;
@property (nonatomic, copy) NSArray *optionSettings;
@property (nonatomic, copy) NSArray *dBSecurityGroupMemberships;
@property (nonatomic, copy) NSArray *vpcSecurityGroupMemberships;

/**
 * Retrieves the UARDSOptionSetting at the specified index.
**/
- (UARDSOptionSetting *)optionSettingAtIndex:(NSUInteger)index;

/**
 * Retrieves the UARDSDBSecurityGroupMembership at the specified index.
**/
- (UARDSDBSecurityGroupMembership *)dBSecurityGroupMembershipAtIndex:(NSUInteger)index;

/**
 * Retrieves the UARDSVPCSecurityGroupMembership at the specified index.
**/
- (UARDSVPCSecurityGroupMembership *)vpcSecurityGroupMembershipAtIndex:(NSUInteger)index;

/**
 * Adds a OptionSetting to the optionSettings property.
 *
 * This will initialise optionSettings with an empty mutable array if necessary.
**/
- (void)addOptionSetting:(UARDSOptionSetting *)optionSetting;
/**
 * Adds a DBSecurityGroupMembership to the dBSecurityGroupMemberships property.
 *
 * This will initialise dBSecurityGroupMemberships with an empty mutable array if necessary.
**/
- (void)addDBSecurityGroupMembership:(UARDSDBSecurityGroupMembership *)dBSecurityGroupMembership;
/**
 * Adds a VPCSecurityGroupMembership to the vpcSecurityGroupMemberships property.
 *
 * This will initialise vpcSecurityGroupMemberships with an empty mutable array if necessary.
**/
- (void)addVPCSecurityGroupMembership:(UARDSVPCSecurityGroupMembership *)vPCSecurityGroupMembership;

@end
