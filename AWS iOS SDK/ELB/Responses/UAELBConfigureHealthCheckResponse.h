//
//  UAELBConfigureHealthCheckResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBHealthCheck;

@interface UAELBConfigureHealthCheckResponse : UAELBResponse

@property (nonatomic, copy) UAELBHealthCheck *healthCheck;

@end
