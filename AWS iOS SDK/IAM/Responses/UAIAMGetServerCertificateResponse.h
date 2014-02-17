//
//  UAIAMGetServerCertificateResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMServerCertificate;

@interface UAIAMGetServerCertificateResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMServerCertificate *serverCertificate;

@end
