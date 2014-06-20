//
//  UAELBDeleteLoadBalancerPolicyResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDeleteLoadBalancerPolicyResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBDeleteLoadBalancerPolicyResponse

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DeleteLoadBalancerPolicyResponse/ElasticLoadBalancing:DeleteLoadBalancerPolicyResult/";
}

@end

#pragma clang diagnostic pop