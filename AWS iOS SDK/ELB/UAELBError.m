//
//  UAELBError.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAELBError.h"
#import "UAAWSRequest.h"

@implementation UAELBError

@synthesize code=_code, message=_message, requestID=_requestID, HTTPStatusCode=_HTTPStatusCode;

#pragma mark - Mantle Serialisation

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"ElasticLoadBalancing": @"http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/" };
}

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:ErrorResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    return
    @{
        @"code":        @"ElasticLoadBalancing:Error/ElasticLoadBalancing:Code",
        @"message":     @"ElasticLoadBalancing:Error/ElasticLoadBalancing:Message",
        @"requestID":   @"ElasticLoadBalancing:RequestID"
    };
}

#pragma mark - Error Generation

- (NSError *)errorObject
{
    NSDictionary *userInfo = @{ UAAWSErrorName: self.code, UAAWSErrorMessage: self.message };
    
    UAAWSErrorCode code = 0;
    if (self.HTTPStatusCode >= 500)
        code = UAAWSErrorCodeServer;
    else if (self.HTTPStatusCode >= 400)
        code = UAAWSErrorCodeClient;
    
    return [NSError errorWithDomain:UAAWSErrorDomain code:code userInfo:userInfo];
}

@end
