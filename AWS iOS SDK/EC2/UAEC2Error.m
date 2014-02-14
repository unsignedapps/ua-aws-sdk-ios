//
//  UAEC2Error.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 3/02/2014.
//
//

#import "UAEC2Error.h"
#import "UAAWSRequest.h"

@implementation UAEC2Error

@synthesize code=_code, message=_message, requestID=_requestID, HTTPStatusCode=_HTTPStatusCode;

#pragma mark - Mantle Serialisation

+ (NSString *)XPathPrefix
{
    return @"./Response/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    return
    @{
        @"code":        @"Errors/Error/Code",
        @"message":     @"Errors/Error/Message",
        @"requestID":   @"RequestID"
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
