//
//  UAIAMGetCredentialReportResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@interface UAIAMGetCredentialReportResponse : UAIAMResponse

@property (nonatomic, copy) NSString *content;
@property (nonatomic, copy) NSString *reportFormat;
@property (nonatomic, copy) NSDate *generatedTime;

@end
