//
//  UAIAMCertificate.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMCertificate : UAIAMModel

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *certificateID;
@property (nonatomic, copy) NSString *certificateBody;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSDate *uploadDate;

@end
