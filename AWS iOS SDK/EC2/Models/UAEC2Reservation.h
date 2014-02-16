//
//  UAEC2Reservation.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2GroupIdentifier, UAEC2Instance;

@interface UAEC2Reservation : UAEC2Model

@property (nonatomic, copy) NSString *reservationID;
@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *requesterID;
@property (nonatomic, copy) NSArray *groups;
@property (nonatomic, copy) NSArray *instances;

@end
