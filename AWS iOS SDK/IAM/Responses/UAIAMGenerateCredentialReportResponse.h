//
//  UAIAMGenerateCredentialReportResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@interface UAIAMGenerateCredentialReportResponse : UAIAMResponse

@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *descriptionValue;

@end
