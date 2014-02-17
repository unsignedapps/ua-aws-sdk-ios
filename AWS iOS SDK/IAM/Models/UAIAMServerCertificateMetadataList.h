//
//  UAIAMServerCertificateMetadataList.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMServerCertificateMetadataList : UAIAMModel

@property (nonatomic, copy) NSString *path;
@property (nonatomic, copy) NSString *serverCertificateName;
@property (nonatomic, copy) NSString *serverCertificateID;
@property (nonatomic, copy) NSString *arn;
@property (nonatomic, copy) NSDate *uploadDate;

@end
