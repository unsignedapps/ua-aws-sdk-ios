//
//  UARDSOptionGroupOption.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSOptionGroupOptionSetting;

@interface UARDSOptionGroupOption : UARDSModel

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *description;
@property (nonatomic, copy) NSString *engineName;
@property (nonatomic, copy) NSString *majorEngineVersion;
@property (nonatomic, copy) NSString *minimumRequiredMinorEngineVersion;
@property (nonatomic) BOOL portRequired;
@property (nonatomic, strong) NSNumber *defaultPort;
@property (nonatomic, copy) NSArray *optionsDependedOn;
@property (nonatomic) BOOL persistent;
@property (nonatomic) BOOL permanent;
@property (nonatomic, copy) NSArray *optionGroupOptionSettings;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)optionDependedOnAtIndex:(NSUInteger)index;

/**
 * Retrieves the UARDSOptionGroupOptionSetting at the specified index.
**/
- (UARDSOptionGroupOptionSetting *)optionGroupOptionSettingAtIndex:(NSUInteger)index;

/**
 * Adds a OptionDependedOn to the optionsDependedOn property.
 *
 * This will initialise optionsDependedOn with an empty mutable array if necessary.
**/
- (void)addOptionDependedOn:(NSString *)optionDependedOn;
/**
 * Adds a OptionGroupOptionSetting to the optionGroupOptionSettings property.
 *
 * This will initialise optionGroupOptionSettings with an empty mutable array if necessary.
**/
- (void)addOptionGroupOptionSetting:(UARDSOptionGroupOptionSetting *)optionGroupOptionSetting;

@end
