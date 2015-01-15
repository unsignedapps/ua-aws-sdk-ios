//
//  UAELBDeleteLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDeleteLoadBalancerResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBDeleteLoadBalancerResponse

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DeleteLoadBalancerResponse/ElasticLoadBalancing:DeleteLoadBalancerResult/";
}

@end

#pragma clang diagnostic pop