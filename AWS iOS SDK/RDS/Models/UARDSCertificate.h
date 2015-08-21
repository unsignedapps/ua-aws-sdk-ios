//
//  UARDSCertificate.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSCertificate : UARDSModel

@property (nonatomic, copy) NSString *certificateIdentifier;
@property (nonatomic, copy) NSString *certificateType;
@property (nonatomic, copy) NSString *thumbprint;
@property (nonatomic, copy) NSString *validFrom;
@property (nonatomic, copy) NSString *validTill;

@end
