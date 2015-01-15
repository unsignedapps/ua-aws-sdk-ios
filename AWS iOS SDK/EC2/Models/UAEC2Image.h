//
//  UAEC2Image.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2ProductCode, UAEC2StateReason, UAEC2BlockDeviceMapping, UAEC2Tag;

@interface UAEC2Image : UAEC2Model

@property (nonatomic, copy) NSString *imageID;
@property (nonatomic, copy) NSString *imageLocation;
@property (nonatomic) UAEC2ImageState state;
@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, strong) NSDate *creationDate;
@property (nonatomic) BOOL isPublic;
@property (nonatomic, copy) NSArray *productCodes;
@property (nonatomic) UAEC2Architecture architecture;
@property (nonatomic) UAEC2ImageType imageType;
@property (nonatomic, copy) NSString *kernelID;
@property (nonatomic, copy) NSString *ramdiskID;
@property (nonatomic, copy) NSString *platform;
@property (nonatomic) UAEC2ImageSriovNetSupport sriovNetSupport;
@property (nonatomic, copy) UAEC2StateReason *stateReason;
@property (nonatomic, copy) NSString *imageOwnerAlias;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic) UAEC2RootDeviceType rootDeviceType;
@property (nonatomic, copy) NSString *rootDeviceName;
@property (nonatomic, copy) NSArray *blockDeviceMappings;
@property (nonatomic) UAEC2VirtualizationType virtualizationType;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic) UAEC2Hypervisor hypervisor;

/**
 * Retrieves the UAEC2ProductCode at the specified index.
**/
- (UAEC2ProductCode *)productCodeAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2BlockDeviceMapping at the specified index.
**/
- (UAEC2BlockDeviceMapping *)blockDeviceMappingAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Adds a ProductCode to the productCodes property.
 *
 * This will initialise productCodes with an empty mutable array if necessary.
**/
- (void)addProductCode:(UAEC2ProductCode *)productCode;
/**
 * Adds a BlockDeviceMapping to the blockDeviceMappings property.
 *
 * This will initialise blockDeviceMappings with an empty mutable array if necessary.
**/
- (void)addBlockDeviceMapping:(UAEC2BlockDeviceMapping *)blockDeviceMapping;
/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;

@end
