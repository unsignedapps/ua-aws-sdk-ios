//
//  UAEC2Response.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 30/01/2014.
//
//

#import "UAEC2Response.h"

@implementation UAEC2Response

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
        @"requestID": @"ec2:requestId"
    };
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"ec2": @"http://ec2.amazonaws.com/doc/2014-10-01/" };
}

@end
