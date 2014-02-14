//
//  UASNSError.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UASNSError.h"
#import "UAAWSRequest.h"

@implementation UASNSError

@synthesize code=_code, message=_message, requestID=_requestID, HTTPStatusCode=_HTTPStatusCode;

#pragma mark - Mantle Serialisation

+ (NSString *)XPathPrefix
{
    return @"./ErrorResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    return
    @{
        @"code":        @"Error/Code",
        @"message":     @"Error/Message",
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
