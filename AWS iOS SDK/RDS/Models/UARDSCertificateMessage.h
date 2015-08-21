//
//  UARDSCertificateMessage.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSCertificate;

@interface UARDSCertificateMessage : UARDSModel

@property (nonatomic, copy) NSArray *certificates;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the UARDSCertificate at the specified index.
**/
- (UARDSCertificate *)certificateAtIndex:(NSUInteger)index;

/**
 * Adds a Certificate to the certificates property.
 *
 * This will initialise certificates with an empty mutable array if necessary.
**/
- (void)addCertificate:(UARDSCertificate *)certificate;

@end
