//
//  UAIAMServerCertificate.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@class UAIAMServerCertificateMetadata;

@interface UAIAMServerCertificate : UAIAMModel

@property (nonatomic, copy) UAIAMServerCertificateMetadata *serverCertificateMetadata;
@property (nonatomic, copy) NSString *certificateBody;
@property (nonatomic, copy) NSString *certificateChain;

@end
