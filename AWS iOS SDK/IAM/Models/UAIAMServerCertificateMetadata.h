//
//  UAIAMServerCertificateMetadata.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMServerCertificateMetadata : UAIAMModel

@property (nonatomic, copy) NSString *path;
@property (nonatomic, copy) NSString *serverCertificateName;
@property (nonatomic, copy) NSString *serverCertificateID;
@property (nonatomic, copy) NSString *arn;
@property (nonatomic, copy) NSDate *uploadDate;
@property (nonatomic, copy) NSString *expiration;

@end
