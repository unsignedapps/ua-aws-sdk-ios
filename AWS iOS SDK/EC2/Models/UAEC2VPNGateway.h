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

@end
