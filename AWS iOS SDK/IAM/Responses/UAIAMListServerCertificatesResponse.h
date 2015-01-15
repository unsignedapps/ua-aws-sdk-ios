//
//  UAIAMListServerCertificatesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMServerCertificateMetadata;

@interface UAIAMListServerCertificatesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *serverCertificateMetadata;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UAIAMServerCertificateMetadata at the specified index.
**/
- (UAIAMServerCertificateMetadata *)serverCertificateMetadataAtIndex:(NSUInteger)index;

/**
 * Adds a ServerCertificateMetadata to the serverCertificateMetadata property.
 *
 * This will initialise serverCertificateMetadata with an empty mutable array if necessary.
**/
- (void)addServerCertificateMetadata:(UAIAMServerCertificateMetadata *)serverCertificateMetadata;

@end
