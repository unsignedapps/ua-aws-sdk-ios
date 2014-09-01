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

/**
 * Adds a AppCookieStickinessPolicy to the appCookieStickinessPolicies property.
 *
 * This will initialise appCookieStickinessPolicies with an empty mutable array if necessary.
**/
- (void)addAppCookieStickinessPolicy:(UAELBAppCookieStickinessPolicy *)appCookieStickinessPolicy;
/**
 * Adds a LBCookieStickinessPolicy to the lBCookieStickinessPolicies property.
 *
 * This will initialise lBCookieStickinessPolicies with an empty mutable array if necessary.
**/
- (void)addLBCookieStickinessPolicy:(UAELBLBCookieStickinessPolicy *)lBCookieStickinessPolicy;
/**
 * Adds a OtherPolicy to the otherPolicies property.
 *
 * This will initialise otherPolicies with an empty mutable array if necessary.
**/
- (void)addOtherPolicy:(NSString *)otherPolicy;

@end
