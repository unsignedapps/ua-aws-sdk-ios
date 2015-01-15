//
//  UAELBCreateLoadBalancerListenersResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBCreateLoadBalancerListenersResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBCreateLoadBalancerListenersResponse

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:CreateLoadBalancerListenersResponse/ElasticLoadBalancing:CreateLoadBalancerListenersResult/";
}

@end

#pragma clang diagnostic pop