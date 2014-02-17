//
//  UAIAMListSigningCertificatesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMCertificate;

@interface UAIAMListSigningCertificatesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *certificates;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

@end
