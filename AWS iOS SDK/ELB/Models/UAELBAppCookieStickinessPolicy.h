//
//  UAELBAppCookieStickinessPolicy.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBAppCookieStickinessPolicy : UAELBModel

@property (nonatomic, copy) NSString *policyName;
@property (nonatomic, copy) NSString *cookieName;

@end
