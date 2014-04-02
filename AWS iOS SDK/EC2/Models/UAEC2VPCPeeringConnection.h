//
//  UAEC2VPCPeeringConnection.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2AccepterVPCInfo, UAEC2RequesterVPCInfo, UAEC2VPCPeeringConnectionStatus, UAEC2Tag;

@interface UAEC2VPCPeeringConnection : UAEC2Model

@property (nonatomic, copy) UAEC2AccepterVPCInfo *accepterVPCInfo;
@property (nonatomic, copy) NSDate *expirationTime;
@property (nonatomic, copy) UAEC2RequesterVPCInfo *requesterVPCInfo;
@property (nonatomic, copy) UAEC2VPCPeeringConnectionStatus *status;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSString *vpcPeeringConnectionID;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

@end
