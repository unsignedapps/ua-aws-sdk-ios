//
//  UAEC2InstanceExportDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceExportDetails.h"

@implementation UAEC2InstanceExportDetails

@synthesize instanceID=_instanceID, targetEnvironment=_targetEnvironment;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceID": @"ec2:instanceId",
        @"targetEnvironment": @"ec2:targetEnvironment"
    }];
    return [keyPaths copy];
}

@end
