//
//  UAELBPolicies.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@class UAELBAppCookieStickinessPolicy, UAELBLBCookieStickinessPolicy;

@interface UAELBPolicies : UAELBModel

@property (nonatomic, copy) NSArray *appCookieStickinessPolicies;
@property (nonatomic, copy) NSArray *lBCookieStickinessPolicies;
@property (nonatomic, copy) NSArray *otherPolicies;

@end
