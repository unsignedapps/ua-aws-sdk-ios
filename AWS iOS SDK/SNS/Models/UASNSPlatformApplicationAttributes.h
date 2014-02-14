//
//  UASNSPlatformApplicationAttributes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSModel.h"

@interface UASNSPlatformApplicationAttributes : UASNSModel

@property (nonatomic, copy) NSString *eventEndpointCreated;
@property (nonatomic, copy) NSString *eventEndpointDeleted;
@property (nonatomic, copy) NSString *eventEndpointUpdated;
@property (nonatomic, copy) NSString *eventDeliveryFailure;

@end
