//
//  UAELBDeleteLoadBalancerListenersResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDeleteLoadBalancerListenersResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBDeleteLoadBalancerListenersResponse

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DeleteLoadBalancerListenersResponse/ElasticLoadBalancing:DeleteLoadBalancerListenersResult/";
}

@end

#pragma clang diagnostic pop