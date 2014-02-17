//
//  UAIAMListServerCertificatesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMServerCertificateMetadataList;

@interface UAIAMListServerCertificatesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *serverCertificateMetadataList;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

@end
