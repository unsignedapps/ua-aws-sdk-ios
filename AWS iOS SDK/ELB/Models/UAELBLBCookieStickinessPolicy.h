//
//  UAELBLBCookieStickinessPolicy.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBLBCookieStickinessPolicy : UAELBModel

@property (nonatomic, copy) NSString *policyName;
@property (nonatomic, strong) NSNumber *cookieExpirationPeriod;

@end
