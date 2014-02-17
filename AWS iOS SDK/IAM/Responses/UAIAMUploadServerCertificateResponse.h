//
//  UAIAMUploadServerCertificateResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMServerCertificateMetadata;

@interface UAIAMUploadServerCertificateResponse : UAIAMResponse

@property (nonatomic, copy) UAIAMServerCertificateMetadata *serverCertificateMetadata;

@end
