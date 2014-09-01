//
//  UAEC2VPNGateway.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2VPCAttachment, UAEC2Tag;

@interface UAEC2VPNGateway : UAEC2Model

@property (nonatomic, copy) NSString *vpnGatewayID;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic, copy) NSArray *vpcAttachments;
@property (nonatomic, copy) NSArray *tags;

/**
 * Retrieves the UAEC2VPCAttachment at the specified index.
**/
- (UAEC2VPCAttachment *)vpcAttachmentAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Adds a VPCAttachment to the vpcAttachments property.
 *
 * This will initialise vpcAttachments with an empty mutable array if necessary.
**/
- (void)addVPCAttachment:(UAEC2VPCAttachment *)vPCAttachment;
/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;

@end
