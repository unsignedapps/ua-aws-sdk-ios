//
//  UACWError.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UACWError.h"
#import "UAAWSRequest.h"

@implementation UACWError

@synthesize code=_code, message=_message, requestID=_requestID, HTTPStatusCode=_HTTPStatusCode;

#pragma mark - Mantle Serialisation

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:ErrorResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    return
    @{
        @"code":        @"cloudwatch:Error/cloudwatch:Code",
        @"message":     @"cloudwatch:Error/cloudwatch:Message",
        @"requestID":   @"cloudwatch:RequestID"
    };
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"cloudwatch": @"http://monitoring.amazonaws.com/doc/2010-08-01/" };
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
