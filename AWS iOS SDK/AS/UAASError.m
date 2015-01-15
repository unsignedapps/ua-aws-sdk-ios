//
//  UAASError.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAASError.h"
#import "UAAWSRequest.h"

@implementation UAASError

@synthesize code=_code, message=_message, requestID=_requestID, HTTPStatusCode=_HTTPStatusCode;

#pragma mark - Mantle Serialisation

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"AutoScaling": @"http://autoscaling.amazonaws.com/doc/2011-01-01/" };
}

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:ErrorResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    return
    @{
        @"code":        @"AutoScaling:Error/AutoScaling:Code",
        @"message":     @"AutoScaling:Error/AutoScaling:Message",
        @"requestID":   @"AutoScaling:RequestID"
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
