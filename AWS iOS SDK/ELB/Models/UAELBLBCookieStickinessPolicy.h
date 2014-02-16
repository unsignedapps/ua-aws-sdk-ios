//
//  UAELBLBCookieStickinessPolicy.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBLBCookieStickinessPolicy : UAELBModel

@property (nonatomic, copy) NSString *policyName;
@property (nonatomic, strong) NSNumber *cookieExpirationPeriod;

@end
