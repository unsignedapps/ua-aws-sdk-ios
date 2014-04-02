//
//  UAEC2NetworkInterface.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2GroupIdentifier, UAEC2NetworkInterfaceAttachment, UAEC2NetworkInterfaceAssociation, UAEC2Tag, UAEC2PrivateIPAddress;

@interface UAEC2NetworkInterface : UAEC2Model

@property (nonatomic, copy) NSString *networkInterfaceID;
@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *requesterID;
@property (nonatomic) BOOL requesterManaged;
@property (nonatomic) UAEC2NetworkInterfaceState state;
@property (nonatomic, copy) NSString *macAddress;
@property (nonatomic, copy) NSString *privateIPAddress;
@property (nonatomic, copy) NSString *privateDNSName;
@property (nonatomic) BOOL sourceDestCheck;
@property (nonatomic, copy) NSArray *groups;
@property (nonatomic, copy) UAEC2NetworkInterfaceAttachment *attachment;
@property (nonatomic, copy) UAEC2NetworkInterfaceAssociation *association;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSArray *privateIPAddresses;

/**
 * Retrieves the UAEC2GroupIdentifier at the specified index.
**/
- (UAEC2GroupIdentifier *)groupAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2PrivateIPAddress at the specified index.
**/
- (UAEC2PrivateIPAddress *)privateIPAddressAtIndex:(NSUInteger)index;

@end
