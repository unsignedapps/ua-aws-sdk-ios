//
//  UAELBCreateLoadBalancerPolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBCreateLoadBalancerPolicyResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBCreateLoadBalancerPolicyResponse

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:CreateLoadBalancerPolicyResponse/ElasticLoadBalancing:CreateLoadBalancerPolicyResult/";
}

@end

#pragma clang diagnostic pop