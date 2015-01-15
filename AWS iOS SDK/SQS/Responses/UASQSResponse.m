//
//  UASQSResponse.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UASQSResponse.h"

@implementation UASQSResponse

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
        @"requestID": @"../sqs:ResponseMetadata/sqs:RequestId"
    };
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"sqs": @"http://queue.amazonaws.com/doc/2012-11-05/" };
}

@end
