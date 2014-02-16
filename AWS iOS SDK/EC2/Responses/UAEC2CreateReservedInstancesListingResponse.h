//
//  UAEC2CreateReservedInstancesListingResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@class UAEC2ReservedInstancesListing;

@interface UAEC2CreateReservedInstancesListingResponse : UAEC2Response

@property (nonatomic, copy) NSArray *reservedInstancesListings;

@end
