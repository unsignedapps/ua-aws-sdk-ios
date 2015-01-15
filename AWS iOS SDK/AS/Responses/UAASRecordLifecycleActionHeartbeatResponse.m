//
//  UAASRecordLifecycleActionHeartbeatResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASRecordLifecycleActionHeartbeatResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASRecordLifecycleActionHeartbeatResponse

@synthesize requestID=_requestID;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:RecordLifecycleActionHeartbeatResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"requestID": @"AutoScaling:ResponseMetadata/AutoScaling:RequestId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop