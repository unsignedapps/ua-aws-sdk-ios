//
//  UAEC2GetConsoleOutputResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2GetConsoleOutputResponse.h"

@implementation UAEC2GetConsoleOutputResponse

@synthesize instanceID=_instanceID, timestamp=_timestamp, output=_output;

+ (NSString *)XPathPrefix
{
    return @"./ec2:GetConsoleOutputResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceID": @"ec2:instanceId",
        @"timestamp": @"ec2:timestamp",
        @"output": @"ec2:output"
    }];
    return [keyPaths copy];
}

@end
