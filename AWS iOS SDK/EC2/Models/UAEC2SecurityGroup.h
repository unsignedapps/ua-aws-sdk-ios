//
//  UAEC2SecurityGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2IPPermission, UAEC2Tag;

@interface UAEC2SecurityGroup : UAEC2Model

@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *groupName;
@property (nonatomic, copy) NSString *groupID;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSArray *ipPermissions;
@property (nonatomic, copy) NSArray *ipPermissionsEgress;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSArray *tags;

/**
 * Retrieves the UAEC2IPPermission at the specified index.
**/
- (UAEC2IPPermission *)ipPermissionAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2IPPermission at the specified index.
**/
- (UAEC2IPPermission *)ipPermissionEgressAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Adds a IPPermission to the ipPermissions property.
 *
 * This will initialise ipPermissions with an empty mutable array if necessary.
**/
- (void)addIPPermission:(UAEC2IPPermission *)iPPermission;
/**
 * Adds a IPPermissionEgress to the ipPermissionsEgress property.
 *
 * This will initialise ipPermissionsEgress with an empty mutable array if necessary.
**/
- (void)addIPPermissionEgress:(UAEC2IPPermission *)iPPermissionEgress;
/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;

@end
