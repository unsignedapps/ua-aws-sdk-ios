//
//  UAELBModel.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAELBModel.h"

@implementation UAELBModel

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

+ (NSString *)XPathPrefix
{
    return nil;
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"ElasticLoadBalancing": @"http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/" };
}

@end
