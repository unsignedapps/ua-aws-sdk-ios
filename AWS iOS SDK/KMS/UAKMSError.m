//
//  UAKMSError.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 14/11/2014.
//
//

#import "UAKMSError.h"
#import "UAAWSRequest.h"

@implementation UAKMSError

@synthesize code=_code, message=_message, HTTPStatusCode=_HTTPStatusCode;

#pragma mark - Mantle Serialisation

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return
    @{
        @"code":        @"__type",
        @"message":     @"Message"
    };
}

#pragma mark - Transformers

+ (NSValueTransformer *)codeJSONTransformer
{
    return [UAMTLValueTransformer transformerWithBlock:^id(NSString *input)
    {
        NSRange range = [input rangeOfString:@"#"];
        if (range.location != NSNotFound)
            return [input substringFromIndex:range.location+1];
        return input;
    }];
}

#pragma mark - Error Generation

- (NSError *)errorObject
{
    NSDictionary *userInfo = @{ UAAWSErrorName: self.code, UAAWSErrorMessage: self.message ?: @"" };
    
    UAAWSErrorCode code = 0;
    if (self.HTTPStatusCode >= 500)
        code = UAAWSErrorCodeServer;
    else if (self.HTTPStatusCode >= 400)
        code = UAAWSErrorCodeClient;
    
    return [NSError errorWithDomain:UAAWSErrorDomain code:code userInfo:userInfo];
}

@end
