//
//  UADDBResponse.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UADDBResponse.h"

@implementation UADDBResponse

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
        @"requestID": @"../AutoScaling:ResponseMetadata/AutoScaling:RequestId"
    };
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"AutoScaling": @"http://autoscaling.amazonaws.com/doc/2011-01-01/" };
}

@end
