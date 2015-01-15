//
//  UAIAMSigningCertificate.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMSigningCertificate : UAIAMModel

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *certificateID;
@property (nonatomic, copy) NSString *certificateBody;
@property (nonatomic) UAIAMSigningCertificateStatus status;
@property (nonatomic, copy) NSDate *uploadDate;

@end
