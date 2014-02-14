//
//  UAEC2GetPasswordDataResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2GetPasswordDataResponse.h"

@implementation UAEC2GetPasswordDataResponse

@synthesize instanceID=_instanceID, timestamp=_timestamp, passwordData=_passwordData;

+ (NSString *)XPathPrefix
{
    return @"./ec2:GetPasswordDataResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceID": @"ec2:instanceId",
        @"timestamp": @"ec2:timestamp",
        @"passwordData": @"ec2:passwordData"
    }];
    return [keyPaths copy];
}

@end
