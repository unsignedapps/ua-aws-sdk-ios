//
//  UAEC2RunInstancesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2GroupIdentifier, UAEC2Instance;

@interface UAEC2RunInstancesResponse : UAEC2Response

@property (nonatomic, copy) NSString *reservationID;
@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *requesterID;
@property (nonatomic, copy) NSArray *groups;
@property (nonatomic, copy) NSArray *instances;

@end
