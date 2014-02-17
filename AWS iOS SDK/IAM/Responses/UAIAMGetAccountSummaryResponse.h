//
//  UAIAMGetAccountSummaryResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMAccountSummary;

@interface UAIAMGetAccountSummaryResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *summaryMap;

@end
