//
//  UAELBResponse.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAELBResponse.h"

@implementation UAELBResponse

@synthesize requestID=_requestID;

// basic implementation for overriding
+ (NSString *)XPathPrefix
{
    return @"";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    return
    @{
        @"requestID": @"ElasticLoadBalancing:requestId"
    };
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"ElasticLoadBalancing": @"http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/" };
}

@end
