//
//  UAELBPolicies.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@class UAELBAppCookieStickinessPolicy, UAELBLBCookieStickinessPolicy;

@interface UAELBPolicies : UAELBModel

@property (nonatomic, copy) NSArray *appCookieStickinessPolicies;
@property (nonatomic, copy) NSArray *lBCookieStickinessPolicies;
@property (nonatomic, copy) NSArray *otherPolicies;

/**
 * Retrieves the UAELBAppCookieStickinessPolicy at the specified index.
**/
- (UAELBAppCookieStickinessPolicy *)appCookieStickinessPolicyAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAELBLBCookieStickinessPolicy at the specified index.
**/
- (UAELBLBCookieStickinessPolicy *)lBCookieStickinessPolicyAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)otherPolicyAtIndex:(NSUInteger)index;

@end
