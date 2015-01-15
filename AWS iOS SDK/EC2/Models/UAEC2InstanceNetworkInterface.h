//
//  UAEC2InstanceNetworkInterface.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2GroupIdentifier, UAEC2InstanceNetworkInterfaceAttachment, UAEC2InstanceNetworkInterfaceAssociation, UAEC2InstancePrivateIPAddress;

@interface UAEC2InstanceNetworkInterface : UAEC2Model

@property (nonatomic, copy) NSString *networkInterfaceID;
@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSString *macAddress;
@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic) UAEC2NetworkInterfaceAttachmentStatus status;
@property (nonatomic, copy) NSString *privateIPAddress;
@property (nonatomic, copy) NSString *privateDNSName;
@property (nonatomic) BOOL sourceDestCheck;
@property (nonatomic, copy) NSArray *groups;
@property (nonatomic, copy) UAEC2InstanceNetworkInterfaceAttachment *attachment;
@property (nonatomic, copy) UAEC2InstanceNetworkInterfaceAssociation *association;
@property (nonatomic, copy) NSArray *privateIPAddresses;

/**
 * Retrieves the UAEC2GroupIdentifier at the specified index.
**/
- (UAEC2GroupIdentifier *)groupAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2InstancePrivateIPAddress at the specified index.
**/
- (UAEC2InstancePrivateIPAddress *)privateIPAddressAtIndex:(NSUInteger)index;

/**
 * Adds a Group to the groups property.
 *
 * This will initialise groups with an empty mutable array if necessary.
**/
- (void)addGroup:(UAEC2GroupIdentifier *)group;
/**
 * Adds a PrivateIPAddress to the privateIPAddresses property.
 *
 * This will initialise privateIPAddresses with an empty mutable array if necessary.
**/
- (void)addPrivateIPAddress:(UAEC2InstancePrivateIPAddress *)privateIPAddress;

@end
