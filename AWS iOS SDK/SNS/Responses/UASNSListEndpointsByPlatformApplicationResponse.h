//
//  UASNSListEndpointsByPlatformApplicationResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSEndpoint;

@interface UASNSListEndpointsByPlatformApplicationResponse : UASNSResponse

@property (nonatomic, copy) NSArray *endpoints;
@property (nonatomic, copy) NSString *nextToken;

@end
