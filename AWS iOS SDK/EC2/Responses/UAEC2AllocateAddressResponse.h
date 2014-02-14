//
//  UAEC2AllocateAddressResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@interface UAEC2AllocateAddressResponse : UAEC2Response

@property (nonatomic, copy) NSString *publicIP;
@property (nonatomic) UAEC2Domain domain;
@property (nonatomic, copy) NSString *allocationID;

@end
