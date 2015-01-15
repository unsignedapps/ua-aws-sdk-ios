//
//  UAELBConfigureHealthCheckResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBConfigureHealthCheckResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBHealthCheck.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBConfigureHealthCheckResponse

@synthesize healthCheck=_healthCheck;

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:ConfigureHealthCheckResponse/ElasticLoadBalancing:ConfigureHealthCheckResult/";
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
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAELBHealthCheck class]];
}

@end

#pragma clang diagnostic pop