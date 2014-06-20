//
//  UAELBSetLoadBalancerPoliciesForBackendServerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBSetLoadBalancerPoliciesForBackendServerResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBSetLoadBalancerPoliciesForBackendServerResponse

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:SetLoadBalancerPoliciesForBackendServerResponse/ElasticLoadBalancing:SetLoadBalancerPoliciesForBackendServerResult/";
}

@end

#pragma clang diagnostic pop