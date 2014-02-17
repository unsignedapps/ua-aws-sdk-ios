//
//  UAIAMUploadSigningCertificateResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMSigningCertificate;

@interface UAIAMUploadSigningCertificateResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMSigningCertificate *certificate;

@end
