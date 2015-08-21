//
//  UARDSResponse.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UARDSResponse.h"

@implementation UARDSResponse

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
        @"requestID": @"../Rds:ResponseMetadata/Rds:RequestId"
    };
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"Rds": @"http://rds.amazonaws.com/doc/2014-10-31/" };
}

@end
