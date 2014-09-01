//
//  UAMAError.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAError.h"
#import "UAAWSRequest.h"

@implementation UAMAError

@synthesize type=_type, message=_message, HTTPStatusCode=_HTTPStatusCode;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return
    @{
        @"type":            @"__type",
        @"message":         @"message",
        @"HTTPStatusCode":  [NSNull null]
    };
}

#pragma mark - Error Generation

- (NSError *)errorObject
{
    NSDictionary *userInfo = @{ UAAWSErrorName: self.type ?: @"", UAAWSErrorMessage: self.message ?: @"" };
    
    UAAWSErrorCode code = 0;
    if (self.HTTPStatusCode >= 500)
        code = UAAWSErrorCodeServer;
    else if (self.HTTPStatusCode >= 400)
        code = UAAWSErrorCodeClient;
    
    return [NSError errorWithDomain:UAAWSErrorDomain code:code userInfo:userInfo];
}

@end
