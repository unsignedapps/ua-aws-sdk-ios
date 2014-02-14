//
//  UAELBConfigureHealthCheckResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBConfigureHealthCheckResponse.h"
#import "UAELBHealthCheck.h"

@implementation UAELBConfigureHealthCheckResponse

@synthesize healthCheck=_healthCheck;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:ConfigureHealthCheckResult/ElasticLoadBalancing:ConfigureHealthCheckResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"healthCheck": @"ElasticLoadBalancing:HealthCheck"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)healthCheckXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAELBHealthCheck class]];
}

@end
