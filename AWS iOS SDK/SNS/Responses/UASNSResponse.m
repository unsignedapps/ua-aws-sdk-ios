//
//  UASNSResponse.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UASNSResponse.h"

@implementation UASNSResponse

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
        @"requestID": @"../Sns:ResponseMetadata/Sns:RequestId"
    };
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"Sns": @"http://sns.amazonaws.com/doc/2010-03-31/" };
}

@end
