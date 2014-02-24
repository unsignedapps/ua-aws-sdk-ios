//
//  UAIAMResponse.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAIAMResponse.h"

@implementation UAIAMResponse

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
        @"requestID": @"../iam:ResponseMetadata/iam:RequestId"
    };
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"iam": @"https://iam.amazonaws.com/doc/2010-05-08/" };
}

@end
