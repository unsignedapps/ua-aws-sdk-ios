//
//  UACWResponse.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UACWResponse.h"

@implementation UACWResponse

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
        @"requestID": @"../cloudwatch:ResponseMetadata/cloudwatch:RequestId"
    };
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"cloudwatch": @"http://monitoring.amazonaws.com/doc/2010-08-01/" };
}

@end
