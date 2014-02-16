//
//  UAELBDeleteLoadBalancerResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDeleteLoadBalancerResponse.h"

@implementation UAELBDeleteLoadBalancerResponse

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DeleteLoadBalancerResponse/ElasticLoadBalancing:DeleteLoadBalancerResult/";
}

@end
