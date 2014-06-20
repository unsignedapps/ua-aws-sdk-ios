//
//  UAEC2GetPasswordDataResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2GetPasswordDataResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

#pragma clang diagnostic pop